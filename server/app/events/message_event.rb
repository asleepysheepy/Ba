# frozen_string_literal: true

module MessageEvent
  def self.on(event)
    message = event.message.content

    return if message.start_with?("!ba ")

    Emote.for_today.each do |e|
      event.message.react(e.emoji) if e.react?(message)
    end
  end
end
