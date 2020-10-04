# frozen_string_literal: true

module ReadyEvent
  def self.on(event)
    event.bot.listening = "?ba help"
  end
end
