# frozen_string_literal: true

require_relative '../ba_support/reaction'

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
          total: reaction_count('global_reacts')
        }

        Ba::BaSupport::Reaction.reactions.each do |reaction|
          results.store(reaction.name,
                        reaction_count("global_#{reaction.name}"))
        end

        results
      end

      def self.server(server_id)
        results = {
          name: 'Ba server usage stats',
          description: 'Usage statistics for all users on this server',
          total: reaction_count("#{server_id}_reacts")
        }

        Ba::BaSupport::Reaction.reactions.each do |reaction|
          results.store(reaction.name,
                        reaction_count("#{server_id}_#{reaction.name}"))
        end

        results
      end

      def self.user(user)
        results = {
          name: 'Ba server usage stats',
          description: "Usage statistics for #{user.distinct} on all servers",
          total: reaction_count("#{user.id}_reacts")
        }

        Ba::BaSupport::Reaction.reactions.each do |reaction|
          results.store(reaction.name,
                        reaction_count("#{user.id}_#{reaction.name}"))
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
          embed.add_field(name: '🐑',
                          value: stats[:ba],
                          inline: true)
          embed.add_field(name: '<:nya:434511854505558019>',
                          value: stats[:nya],
                          inline: true)
          embed.add_field(name: '<:awoo:434500209012375553>',
                          value: stats[:awoo],
                          inline: true)
          embed.add_field(name: '<:arf:446677431160668161>',
                          value: stats[:arf],
                          inline: true)
          embed.add_field(name: '🚄',
                          value: stats[:train],
                          inline: true)
          embed.add_field(name: '🐻',
                          value: stats[:bear],
                          inline: true)
          embed.add_field(name: '<:caw:452209651912540160>',
                          value: stats[:caw],
                          inline: true)
        end
      end

      def self.reaction_count(reaction_name)
        stat = REDIS.get reaction_name
        stat.nil? ? 0 : stat
      end
    end
  end
end
