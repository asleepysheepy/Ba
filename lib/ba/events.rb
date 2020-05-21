# frozen_string_literal: true

require 'ba/events/mention'
require 'ba/events/message'

module Ba
  module Events
    extend Discordrb::EventContainer

    mention { |event| Mention.on_mention event }
    message { |event| Message.on_message event }
    ready { |event| event.bot.listening = '?ba help' }
  end
end
