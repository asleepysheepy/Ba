# frozen_string_literal: true

require "rails_helper"

RSpec.describe Emote, type: :model do
  describe "validations" do
    subject { build(:emote) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:emoji) }
    it { is_expected.to validate_presence_of(:regex) }
    it { is_expected.to validate_presence_of(:available_month) }
    it { is_expected.to validate_inclusion_of(:available_month).in_array(described_class::Months::ALL) }
  end

  describe ".for_month" do
    subject { described_class.for_month(month) }

    let(:month) { described_class::Months::JUNE }
    let!(:year_round) { create(:emote) }
    let!(:monthly) { create(:emote, available_month: month) }

    it { is_expected.to include(monthly) }
    it { is_expected.not_to include(year_round) }
  end

  describe ".year_round" do
    subject { described_class.year_round }

    let!(:year_round) { create(:emote) }
    let!(:monthly) { create(:emote, available_month: described_class::Months::JUNE) }

    it { is_expected.not_to include(monthly) }
    it { is_expected.to include(year_round) }
  end

  describe ".for_today" do
    subject { described_class.for_today(date) }

    let(:date) { Date.new(2020, 6, 10) }
    let!(:year_round) { create(:emote) }
    let!(:active_monthly) { create(:emote, available_month: described_class::Months::JUNE) }
    let!(:inactive_monthly) { create(:emote, available_month: described_class::Months::JULY) }

    it { is_expected.to include(year_round) }
    it { is_expected.to include(active_monthly) }
    it { is_expected.not_to include(inactive_monthly) }
  end

  describe "#should_react?" do
    subject { create(:emote).react?(message) }

    context "when the regex doesn't match" do
      let(:message) { "bad" }

      it { is_expected.to eq(false) }
    end

    context "when the regex does match" do
      let(:message) { "baa" }

      it { is_expected.to eq(true) }
    end
  end
end
