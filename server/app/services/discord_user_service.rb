# frozen_string_literal: true

module DiscordUserService
  module_function

  def update_discord_user_object(user, auth_hash)
    token = "Bearer #{auth_hash['credentials']['token']}"

    discord_user = _get_user_from_discord token
    user.assign_attributes _user_attributes discord_user
  end

  def _get_user_from_discord(token)
    JSON.parse Discordrb::API::User.profile token
  end

  def _user_attributes(discord_user)
    {
      avatar_hash: discord_user['avatar'],
      discriminator: discord_user['discriminator'],
      snowflake: discord_user['id'],
      username: discord_user['username']
    }
  end
end
