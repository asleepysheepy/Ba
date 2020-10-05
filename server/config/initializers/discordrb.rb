# frozen_string_literal: true

module BaEvents
  extend Discordrb::EventContainer

  mention { |event| MentionEvent.on(event) }
  message { |event| MessageEvent.on(event) }
  ready { |event| ReadyEvent.on(event) }
end

module BaCommands
  extend Discordrb::Commands::CommandContainer

  command(:stats, StatsCommand.attributes) { |event| StatsCommand.execute(event) }
  command(:ping, PingCommand.attributes) { |event| PingCommand.execute(event) }
end

prefix_proc = proc do |message|
  prefix = "!ba "

  message.content[prefix.size..] if message.content.start_with?(prefix)
end

bot_token = ENV["DISCORD_BOT_TOKEN"]
bot = Discordrb::Commands::CommandBot.new(token: bot_token, prefix: prefix_proc)

bot.include! BaEvents
bot.include! BaCommands

bot.run(true)
