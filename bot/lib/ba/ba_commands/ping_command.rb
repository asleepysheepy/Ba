# frozen_string_literal: true

module Ba
  module BaCommands
    module Ping
      extend Discordrb::Commands::CommandContainer
      command :ping do |event|
        delay = "#{((Time.now - event.timestamp) * 1000).to_i}ms"

        event.channel.send_embed do |embed|
          embed.title = 'Ba Ping!'
          embed.colour = Ba::BaSupport::EmbedDefaults.embed_color
          embed.url = Ba::BaSupport::EmbedDefaults.embed_url
          embed.timestamp = Time.now

          embed.thumbnail = Ba::BaSupport::EmbedDefaults.embed_thumbnail
          embed.author = Ba::BaSupport::EmbedDefaults.embed_author event.author
          embed.footer = Ba::BaSupport::EmbedDefaults.embed_footer

          embed.add_field name: 'Response Time', value: delay
        end
      end
    end
  end
end
