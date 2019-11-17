# frozen_string_literal: true

module Ba
  module BaEvents
    module ReadyEvent
      extend Discordrb::EventContainer
      ready do |event|
        event.bot.listening = '?ba help'
      end
    end
  end
end
