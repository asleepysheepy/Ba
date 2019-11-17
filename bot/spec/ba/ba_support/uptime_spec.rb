# frozen_string_literal: true

require 'ba/ba_support/uptime'

RSpec.describe Ba::BaSupport::Uptime do
  let(:start_time) { Time.new 2018, 6, 10 } # 2018-06-10 00:00:00
  let(:current_time) { Time.new 2018, 6, 30, 15, 14, 47 } # 2018-06-30 15:14:47

  describe '#pluralize' do
    it 'returns the singular form when value is one' do
      expect(described_class.pluralize('day', 1)).to eq 'day'
    end

    it 'returns the plural form when value is greater than 1' do
      expect(described_class.pluralize('day', 3)).to eq 'days'
    end
  end

  describe '#humanize' do
    it 'returns the time defference as a string' do
      expect(described_class.new(start_time, current_time).humanize).to(
        eq '20 days, 15 hours, 14 minutes, and 47 seconds'
      )
    end
  end
end
