# frozen_string_literal: true

require 'dotenv/load'

require 'active_support/core_ext'
require 'active_record'
require 'discordrb'

module Ba
  BA_BOT = Discordrb::Commands::CommandBot.new(token: ENV['TOKEN'], prefix: '?ba ')
  INVITE_URL = "#{BA_BOT.invite_url}&permissions=2112"

  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  load 'lib/ba/events.rb'
  load 'lib/ba/commands.rb'
  BA_BOT.include! Events
  BA_BOT.include! Commands

  Signal.trap 'INT' do
    begin
      BA_BOT.stop
    rescue ThreadError
      puts "\nGoodnight 🐑"
    end
    exit
  end

  TIME_STARTED = Time.now
  BA_BOT.run
end
