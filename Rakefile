# frozen_string_literal: false

require './lib/ba_bot'

desc 'Run the bot'
task :default do
  BaBot.new(ENV['TOKEN']).bot.run
rescue Interrupt
  exit
end
