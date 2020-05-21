# frozen_string_literal: true

require 'ba/utils/embeds'

module Ba
  module Events
    module Mention
      def self.on_mention(event)
        title = 'BAAAAAAAAAAA!!!'
        description = 'Ba Nya Awoo Choo Choo Arf Caw Beary'
        fields = [
          { name: 'Github (PRs encouraged)', value: 'https://github.com/flutterflies/ba' },
          { name: 'Invite Link', value: INVITE_URL }
        ]

        Ba::Utils::Embeds.send_embed(event: event, title: title, description: description, fields: fields)
      end
    end
  end
end
