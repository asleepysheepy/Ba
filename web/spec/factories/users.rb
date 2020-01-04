# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    provider { 'discord' }
    uid { Faker::Number.number(digits: 20).to_s }
    avatar_hash { Faker::Alphanumeric.alphanumeric(number: 25) }
    discriminator { Faker::Number.number(digits: 4).to_s }
    snowflake { uid }
    username { Faker::Name.first_name }
  end
end
