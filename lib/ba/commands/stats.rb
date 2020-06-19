# frozen_string_literal: true

require 'ba/models/emoji'
require 'ba/models/uptime'
require 'ba/utils/embeds'

module Ba
  module Commands
    module Stats
      module Attributes
        ALL = [
          STATS = {
            description: 'Gets meta stats about Ba such as uptime and number of servers',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: '?ba stats'
          }.freeze
        ].freeze
      end

      def self.stats(event)
        fields = [
          { name: 'Servers', value: BA_BOT.servers.count, inline: true },
          { name: 'Users', value: BA_BOT.users.count, inline: true },
          { name: 'Uptime', value: Ba::Models::Uptime.new(TIME_STARTED, Time.now).humanize }
        ]

        Ba::Utils::Embeds.send_embed(event: event, title: 'Ba Statistics!', fields: fields)
      end
    end
  end
end
