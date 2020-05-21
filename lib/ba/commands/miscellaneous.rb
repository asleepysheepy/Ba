# frozen_string_literal: true

require 'ba/utils/embeds'

module Ba
  module Commands
    module Miscellaneous
      module Attributes
        ALL = [
          PING = {
            description: 'Politely ask Ba if she is awake.',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: '?ba ping'
          }.freeze
        ].freeze
      end

      def self.ping(event)
        delay = "#{((Time.now - event.timestamp) * 1000).to_i}ms"

        fields = [{ name: 'Response Time', value: delay }]

        Ba::Utils::Embeds.send_embed(event: event, title: 'Ba Ping!', fields: fields)
      end
    end
  end
end
