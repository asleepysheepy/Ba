# frozen_string_literal: true

require_relative '../ba_support/uptime'

module Ba
  module BaCommands
    module BotStats
      extend Discordrb::Commands::CommandContainer
      command :bot_stats do |event|
        bot_stats = stats

        event.channel.send_embed do |embed|
          embed.title = 'Ba Statistics!'
          embed.colour = Ba::BaSupport::EmbedDefaults.embed_color
          embed.url = Ba::BaSupport::EmbedDefaults.embed_url
          embed.timestamp = Time.now

          embed.thumbnail = Ba::BaSupport::EmbedDefaults.embed_thumbnail
          embed.author = Ba::BaSupport::EmbedDefaults.embed_author event.author
          embed.footer = Ba::BaSupport::EmbedDefaults.embed_footer

          embed.add_field(name: 'Servers',
                          value: bot_stats[:num_servers],
                          inline: true)
          embed.add_field(name: 'Users',
                          value: bot_stats[:num_users],
                          inline: true)
          embed.add_field(name: 'Uptime',
                          value: bot_stats[:up_time])
        end
      end

      def self.stats
        {
          num_servers: BA_BOT.servers.count,
          num_users: BA_BOT.users.count,
          up_time: Ba::BaSupport::Uptime.new(TIME_STARTED, Time.now).humanize
        }
      end
    end
  end
end
