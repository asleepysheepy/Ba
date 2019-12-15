# frozen_string_literal: true

class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise :omniauthable, omniauth_providers: %i[discord]

  def avatar_url
    format = avatar_id.start_with?('a_') ? 'gif' : 'png'
    Discordrb::API::User.avatar_url snowflake, avatar_hash, format
  end

  def default_avatar_url
    Discordrb::API::User.default_avatar snowflake
  end
end
