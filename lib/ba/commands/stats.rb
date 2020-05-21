# frozen_string_literal: true

require 'ba/models/emoji'
require 'ba/models/reaction'
require 'ba/utils/embeds'

module Ba
  module Commands
    module Stats
      module Attributes
        ALL = [
          BOT_STATS = {
            description: 'Gets meta stats about Ba such as uptime and number of servers',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: '?ba bot_stats'
          }.freeze,
          USAGE_STATS = {
            aliases: [:stats],
            description: 'Get stats about how Ba is used',
            help_available: true,
            max_args: 2,
            min_Args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: '?ba stats <(global)|server|user> [@user]'
          }.freeze
        ].freeze
      end

      def self.usage_stats(event, scope)
        case scope
        when 'global'
          _global(event)
        when 'server'
          _server(event, event.server.id)
        when 'user'
          user = event.message.mentions.first || event.author
          _user(event, user)
        else
          _global(event)
        end
      end

      def self.bot_stats(event)
        fields = [
          { name: 'Servers', value: BA_BOT.servers.count, inline: true },
          { name: 'Users', value: BA_BOT.users.count, inline: true },
          { name: 'Uptime', value: Ba::Models::Uptime.new(TIME_STARTED, Time.now).humanize }
        ]

        Ba::Utils::Embeds.send_embed(event: event, title: 'Ba Statistics!', fields: fields)
      end

      def self._global(event)
        title = 'Ba global usage stats'
        description = 'Usage statistics for all users across all servers'

        fields = [{ name: 'Total', value: Ba::Models::Reaction.count }]
        Ba::Models::Emoji.emojis.each do |emoji|
          reaction_count = Ba::Models::Reaction.where(emoji: emoji.name).count
          fields.push(name: _emoji_for_embed(emoji.emote), value: reaction_count, inline: true)
        end

        Ba::Utils::Embeds.send_embed(event: event, title: title, description: description, fields: fields)
      end

      def self._server(event, server_id)
        title = 'Ba server usage stats'
        description = 'Usage statistics for all users on this server'

        fields = [{ name: 'Total', value: Ba::Models::Reaction.where(server_id: server_id).count }]
        Ba::Models::Emoji.emojis.each do |emoji|
          reaction_count = Ba::Models::Reaction.where(server_id: server_id, emoji: name).count
          fields.push(name: _emoji_for_embed(emoji.emote), value: reaction_count, inline: true)
        end

        Ba::Utils::Embeds.send_embed(event: event, title: title, description: description, fields: fields)
      end

      def self._user(event, user)
        title = 'Ba user usage stats'
        description = "Usage statistics for #{user.distinct} on all servers"

        fields = [{ name: 'Total', value: Ba::Models::Reaction.where(user_id: user.id).count }]
        Ba::Models::Emoji.emojis.each do |emoji|
          reaction_count = Ba::Models::Reaction.where(user_id: user.id, emoji: name).count
          fields.push(name: _emoji_for_embed(emoji.emote), value: reaction_count, inline: true)
        end

        Ba::Utils::Embeds.send_embed(event: event, title: title, description: description, fields: fields)
      end

      def self._emoji_for_embed(emoji)
        return "<#{emoji}>" if emoji.start_with?('a:')

        emoji.include?(':') ? "<:#{emoji}>" : emoji
      end
    end
  end
end
