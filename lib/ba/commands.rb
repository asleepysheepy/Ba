# frozen_string_literal: true

require 'ba/commands/stats'
require 'ba/commands/miscellaneous'

module Ba
  module Commands
    extend Discordrb::Commands::CommandContainer

    command(:bot_stats, Stats::Attributes::BOT_STATS) { |event| Stats.bot_stats(event) }
    command(:usage_stats, Stats::Attributes::USAGE_STATS) { |event, scope| Stats.usage_stats(event, scope) }
    command(:ping, Miscellaneous::Attributes::PING) { |event| Miscellaneous.execute(event) }
  end
end
