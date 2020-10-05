# frozen_string_literal: true

FactoryBot.define do
  factory :emote do
    sequence(:name) { |n| "emote_#{n}" }
    regex { '\bba+\b' }
    emoji { "🐑" }
    available_month { Emote::Months::EVERY }
  end
end
