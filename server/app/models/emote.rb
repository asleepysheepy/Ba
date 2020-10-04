# frozen_string_literal: true

class Emote < ApplicationRecord
  module Months
    ALL = [
      JANUARY = "january",
      FEBRUARY = "february",
      MARCH = "march",
      APRIL = "april",
      MAY = "may",
      JUNE = "june",
      JULY = "july",
      AUGUST = "august",
      SEPTEMBER = "september",
      OCTOBER = "october",
      NOVEMBER = "november",
      DECEMBER = "december",

      EVERY = "every"
    ].freeze
  end

  validates :name, presence: true, uniqueness: true
  validates :emoji, presence: true
  validates :regex, presence: true
  validates :available_month, presence: true, inclusion: { in: Months::ALL }

  scope :for_month, ->(month) { where(available_month: month) }
  scope :year_round, -> { where(available_month: Months::EVERY) }
  scope :for_today, lambda { |today = Time.zone.now|
    month = Months::ALL[today.month - 1]

    year_round + for_month(month)
  }

  def react?(message)
    Regexp.new(regex, Regexp::IGNORECASE).match?(message)
  end
end

# == Schema Information
#
# Table name: emotes
#
#  id              :bigint           not null, primary key
#  available_month :string
#  emoji           :string
#  name            :string
#  regex           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_emotes_on_name  (name)
#
