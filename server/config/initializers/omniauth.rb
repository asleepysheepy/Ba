# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :discord,
    ENV['DISCORD_ID'],
    ENV['DISCORD_SECRET'],
    scope: 'identify guilds'
  )
end
