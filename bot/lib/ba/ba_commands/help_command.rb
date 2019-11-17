# frozen_string_literal: true

module Ba
  module BaCommands
    module Help
      extend Discordrb::Commands::CommandContainer
      command :help do |event, command|
        data = case command
               when 'ping'
                 ping_help
               when 'bot_stats'
                 bot_stats_help
               when 'stats', 'usage_stats'
                 stats_help
               else
                 general_help
               end
        send_embed event, data
      end

      def self.ping_help
        {
          name: 'Ba Ping',
          description: 'Politely ask Ba if she is awake.',
          fields: [
            ['usage', '`?ba ping`']
          ]
        }
      end

      def self.bot_stats_help
        {
          name: 'Ba Bot Stats',
          description: 'Gets meta stats about ba such as uptime and number of servers',
          fields: [
            ['usage', '`?ba bot_stats`']
          ]
        }
      end

      def self.stats_help
        {
          name: 'Ba stats',
          description: 'Get stats about how Ba is used',
          fields: [
            ['`?ba stats`', 'Gets global usage stats.'],
            ['`?ba stats server`', 'Gets server specific usage stats.'],
            ['`?ba stats user @user`', 'Gets user specific usage stats. Ping a user to see their stats or leave blank to see your own.']
          ]
        }
      end

      def self.general_help
        {
          name: 'Ba General Help',
          description: "General help for using Ba.\nUse `?ba help command_name` for help with a specific command.",
          fields: [
            ['`ping`', 'Politely ask Ba if she is awake.'],
            ['`bot_stats`', 'Gets some meta stats about Ba.'],
            ['`stats`, `usage_stats`', 'See stats about how Ba is used.']
          ]
        }
      end

      def self.send_embed(event, data)
        event.channel.send_embed do |embed|
          embed.title = data[:title]
          embed.colour = Ba::BaSupport::EmbedDefaults.embed_color
          embed.url = Ba::BaSupport::EmbedDefaults.embed_url
          embed.timestamp = Time.now
          embed.description = data[:description]

          embed.thumbnail = Ba::BaSupport::EmbedDefaults.embed_thumbnail
          embed.author = Ba::BaSupport::EmbedDefaults.embed_author event.author
          embed.footer = Ba::BaSupport::EmbedDefaults.embed_footer

          data[:fields].each do |field|
            embed.add_field name: field.first, value: field.last
          end
        end
      end
    end
  end
end
