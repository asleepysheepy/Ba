# frozen_string_literal: true

require_relative '../models/emoji'
require_relative '../models/reaction'

module Ba
  module BaSupport
    module MessageHelpers
      def self.get_message_reactions(event)
        Ba::Models::Emoji.emojis.map do |name, emoji|
          next unless emoji.should_react? event.message.content.downcase

          Ba::Models::Reaction.create(
            server_id: event.server.id,
            user_id: event.author.id,
            emoji: name
          )
          emoji.emote
        end
      end
    end
  end
end
