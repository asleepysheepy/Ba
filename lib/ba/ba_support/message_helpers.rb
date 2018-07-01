# frozen_string_literal: true

module Ba
  module BaSupport
    module MessageHelpers
      def self.reactions
        {
          '🐑' => /\bba+\b/,
          '🚄' => /\b(choo+\s*choo+|tra+in)\b/,
          '🐻' => /\bbe+a+ry?\b/,
          'nya:434511854505558019' => /\bnya+[hn]?\b/,
          'awoo:434500209012375553' => /\baw(u+|oo+)\b/,
          'arf:446677431160668161' => /\barf+\b/,
          'caw:452209651912540160' => /\bca+w+\b/
        }
      end

      def self.get_message_reactions(message)
        message_reactions = []
        reactions.each do |emote, regex|
          message_reactions << emote if message =~ regex
        end
        message_reactions
      end
    end
  end
end
