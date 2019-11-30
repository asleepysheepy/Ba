# frozen_string_literal: true

require_relative '../models/emoji'
require_relative '../models/reaction'

module Ba
  module BaCommands
    module UsageStats
      extend Discordrb::Commands::CommandContainer
      command %i[usage_stats stats] do |event, scope|
        stats = case scope
                when 'global'
                  global
                when 'server'
                  server event.server.id
                when 'user'
                  user_id = event.message.mentions.first || event.author
                  user user_id
                else
                  global
                end

        send_embed(event, stats)
      end

      def self.global
        results = {
          name: 'Ba global usage stats',
          description: 'Usage statistics for all users across all servers',
          total: Ba::Models::Reaction.all.count
        }

        Ba::Models::Emoji.emojis.each_key do |name|
          results.store(name, Ba::Models::Reaction.where(emoji: name).count)
        end

        results
      end

      def self.server(server_id)
        results = {
          name: 'Ba server usage stats',
          description: 'Usage statistics for all users on this server',
          total: Ba::Models::Reaction.where(server_id: server_id).count
        }

        Ba::Models::Emoji.emojis.each_key do |name|
          results.store(name, Ba::Models::Reaction.where(server_id: server_id, emoji: name).count)
        end

        results
      end

      def self.user(user)
        results = {
          name: 'Ba server usage stats',
          description: "Usage statistics for #{user.distinct} on all servers",
          total: Ba::Models::Reaction.where(user_id: user.id).count
        }

        Ba::Models::Emoji.emojis.each_key do |name|
          results.store(name, Ba::Models::Reaction.where(user_id: user.id, emoji: name).count)
        end

        results
      end

      def self.send_embed(event, stats)
        event.channel.send_embed do |embed|
          embed.title = stats[:name]
          embed.colour = Ba::BaSupport::EmbedDefaults.embed_color
          embed.url = Ba::BaSupport::EmbedDefaults.embed_url
          embed.timestamp = Time.now
          embed.description = stats[:description]

          embed.thumbnail = Ba::BaSupport::EmbedDefaults.embed_thumbnail
          embed.author = Ba::BaSupport::EmbedDefaults.embed_author event.author
          embed.footer = Ba::BaSupport::EmbedDefaults.embed_footer

          embed.add_field name: 'Total', value: stats[:total]
          Ba::Models::Emoji.emojis.each do |name, emoji|
            embed.add_field(name: _emoji_for_embed(emoji.emote),
                            value: stats[name],
                            inline: true)
          end
        end
      end

      def self._emoji_for_embed(emoji)
        return "<#{emoji}>" if emoji.start_with?('a:')

        emoji.include?(':') ? "<:#{emoji}>" : emoji
      end
    end
  end
end
