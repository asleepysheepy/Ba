# frozen_string_literal: true

require_relative '../ba_support/message_helpers'

module Ba
  module BaEvents
    module MessageEvent
      extend Discordrb::EventContainer
      message do |event|
        message_content = event.message.content.downcase
        Ba::BaSupport::MessageHelpers.get_message_reactions(message_content)
                                     .each do |emote|
          event.message.react emote
        end
      end
    end
  end
end
