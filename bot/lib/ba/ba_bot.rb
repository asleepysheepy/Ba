# frozen_string_literal: true

require 'discordrb'
require 'redis'
require_relative 'ba_support/embed_defaults'

module Ba
  BA_BOT = Discordrb::Commands::CommandBot.new(token: ENV['TOKEN'],
                                               prefix: '?ba ')
  INVITE_URL = "#{BA_BOT.invite_url}&permissions=2112"
  REDIS = Redis.new url: ENV['REDIS_URL']

  def self.load_module(name, path)
    new_module = Module.new
    const_set name, new_module
    Dir["lib/ba/#{path}/*.rb"].each { |file| load file }
    new_module.constants.each do |mod|
      BA_BOT.include! new_module.const_get(mod)
    end
  end
  load_module :BaEvents, 'ba_events'
  load_module :BaCommands, 'ba_commands'

  Signal.trap 'INT' do
    # rubocop:disable Lint/HandleExceptions
    begin
      BA_BOT.stop
    rescue ThreadError
      # This is okay - we're going to exit anyways!
    end
    # rubocop:enable Lint/HandleExceptions
    exit
  end

  TIME_STARTED = Time.now
  BA_BOT.run
end
