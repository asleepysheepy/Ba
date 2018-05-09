# frozen_string_literal: true

require 'discordrb'
require './lib/ba/ba_helpers'

module Ba
  bot = Discordrb::Bot.new token: ENV['TOKEN']
  INVITE_URL = "#{bot.invite_url}&permissions=64".freeze

  bot.message do |event|
    message_content = event.message.content.downcase
    BaHelpers.get_message_reactions(message_content).each do |emote|
      event.message.react emote
    end
  end

  bot.ready do |event|
    event.bot.game = 'Ba'
  end

  bot.run
end
