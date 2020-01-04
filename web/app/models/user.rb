# frozen_string_literal: true

class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: %i[discord]

  def self.from_omniauth(auth)
    user_attributes = auth['extra']['raw_info']

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.avatar_hash = user_attributes['avatar']
      user.discriminator = user_attributes['discriminator']
      user.snowflake = user_attributes['id']
      user.username = user_attributes['username']
    end
  end
end
