# frozen_string_literal: true

require 'ba/models/emoji'
require 'ba/models/reaction'

module Ba
  module Utils
    module MessageHelpers
      def self.get_message_reactions(event)
        Ba::Models::Emoji.emojis.map do |emoji|
          next unless emoji.should_react?(event.message.content.downcase)

          Ba::Models::Reaction.create(server_id: event.server.id, user_id: event.author.id, emoji: emoji.name)
          emoji.emote
        end
      end
    end
  end
end
