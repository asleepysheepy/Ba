# frozen_string_literal: true

require 'ba/models/emoji'

module Ba
  module Utils
    module MessageHelpers
      def self.get_message_reactions(event)
        Ba::Models::Emoji.emojis.select do |emoji|
          emoji.should_react?(event.message.content.downcase)
        end.map(&:emote)
      end
    end
  end
end
