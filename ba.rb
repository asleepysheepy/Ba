# frozen_string_literal: true

require 'discordrb'

module Ba
  bot = Discordrb::Bot.new token: ENV['TOKEN']
  INVITE_URL = "#{bot.invite_url}&permissions=64".freeze

  bot.message do |event|
    event.message.react('🐑') if event.message.content.downcase =~ /\bba+\b/
    event.message.react('🐈') if event.message.content.downcase =~ /\bnya+\b/
    event.message.react('🐶') if event.message.content.downcase =~ /\bawo+\b/
  end

  bot.ready do |event|
    event.bot.game = 'Ba'
  end

  bot.run
end
