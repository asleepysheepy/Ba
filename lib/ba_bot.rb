# frozen_string_literal: true

require 'discordrb'
require_relative './ba/ba_helpers'

class BaBot
  include Ba::BaHelpers

  attr_accessor :invite_url, :bot

  def initialize(token)
    @bot = Discordrb::Bot.new token: token
    @invite_url = "#{@bot.invite_url}&permissions=64"

    @bot.message { |event| message event }
    @bot.ready { |event| event.bot.game = 'Ba' }
  end

  def message(event)
    message_content = event.message.content.downcase
    get_message_reactions(message_content).each do |emote|
      event.message.react emote
    end
  end
end
