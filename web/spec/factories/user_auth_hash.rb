# frozen_string_literal: true

FactoryBot.define do
  factory :user_auth_hash, class: 'OmniAuth::AuthHash' do
    provider { 'discord' }
    uid { Faker::Number.number(digits: 20).to_s }

    extra do
      {
        'raw_info': {
          'avatar': Faker::Alphanumeric.alphanumeric(number: 25),
          'discriminator': Faker::Number.number(digits: 4).to_s,
          'id': uid,
          'username': Faker::Name.first_name
        }
      }
    end
  end
end
