# frozen_string_literal: true

require 'discordrb'
require_relative './ba/ba_helpers'

class BaBot
  include Ba::BaHelpers

  attr_accessor :invite_url, :bot

  def initialize(token)
    @bot = Discordrb::Commands::CommandBot.new token: token, prefix: '?ba '
    @invite_url = "#{@bot.invite_url}&permissions=2112"

    @bot.message { |event| message event }
    @bot.ready { |event| event.bot.game = 'Ba' }
    @bot.mention { |event| mention event }
    @bot.command(:num_servers) { |event| num_servers event }
  end

  def message(event)
    message_content = event.message.content.downcase
    get_message_reactions(message_content).each do |emote|
      event.message.react emote
    end
  end

  def mention(event)
    return if event.author.bot_account?
    
    event << 'BAAAAAAAAAAA!!!'
    event << ''
    event << 'Want to contribute to making me better? Check me out at:'
    event << '<https://github.com/flutterflies/ba>'
    event << ''
    event << 'Add me to your server using this link'
    event << "<#{@invite_url}>"
  end

  def num_servers(event)
    unless event.author.id == 145_696_462_959_935_488
      event << "I'm sorry #{event.author.mention}, you cannot run this command."
      event << 'You must be the bot owner to user this command'
      return
    end

    event << "Ba is currently running on #{@bot.servers.size} servers"
  end
end
