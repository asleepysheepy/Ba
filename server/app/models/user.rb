# frozen_string_literal: true

class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise :omniauthable, omniauth_providers: %i[discord]

  def avatar_url
    "https://cdn.discordapp.com/avatars/#{snowflake}/#{avatar_hash}.png"
  end

  def default_avatar_url
    index = discriminator.to_i % 5
    "https://cdn.discordapp.com/embed/avatars/#{index}.png"
  end
end
