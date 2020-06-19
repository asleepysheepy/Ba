# frozen_string_literal: true

require 'ba/commands/stats'
require 'ba/commands/miscellaneous'

module Ba
  module Commands
    extend Discordrb::Commands::CommandContainer

    command(:stats, Stats::Attributes::STATS) { |event| Stats.stats(event) }
    command(:ping, Miscellaneous::Attributes::PING) { |event| Miscellaneous.ping(event) }
  end
end
