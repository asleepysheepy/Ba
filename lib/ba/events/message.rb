# frozen_string_literal: true

require 'ba/utils/message_helpers'

module Ba
  module Events
    module Message
      def self.on_message(event)
        return if event.message.content.start_with? BA_BOT.prefix

        Ba::Utils::MessageHelpers.get_message_reactions(event).compact.each do |emote|
          event.message.react emote
        end
      end
    end
  end
end
