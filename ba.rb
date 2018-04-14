# frozen_string_literal: true

require 'discordrb'

module Ba
  bot = Discordrb::Bot.new token: ENV['TOKEN']
  INVITE_URL = "#{bot.invite_url}&permissions=64".freeze

  AWOO_EMOJI = 'awoo:434500209012375553'.freeze
  NYA_EMOJI = 'nya:434511854505558019'.freeze
  BA_EMOJI = '🐑'.freeze

  bot.message do |event|
    event.message.react(BA_EMOJI) if event.message.content.downcase =~ /\bba+\b/
    event.message.react(NYA_EMOJI) if event.message.content.downcase =~ /\bnya+\b/
    event.message.react(AWOO_EMOJI) if event.message.content.downcase =~ /\bawo+\b/
    event.message.react(AWOO_EMOJI) if event.message.content.downcase =~ /\bawu+\b/
  end

  bot.ready do |event|
    event.bot.game = 'Ba'
  end

  bot.run
end
