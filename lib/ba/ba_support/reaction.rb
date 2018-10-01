# frozen_string_literal: true

module Ba
  module BaSupport
    class Reaction
      attr_reader :name
      attr_reader :emoji
      attr_reader :regex

      def initialize(name, emoji, regex)
        @name = name
        @emoji = emoji
        @regex = regex
      end

      def should_react(message)
        message =~ @regex
      end

      def self.reactions
        reactions = [
          Reaction.new(:ba, '🐑', /\bba+\b/),
          Reaction.new(:arf, 'arf:446677431160668161', /\barf+\b/),
          Reaction.new(:caw, 'caw:452209651912540160', /\bca+w+\b/),
          Reaction.new(:nya, 'nya:434511854505558019', /\bnya+[hn]?\b/),
          Reaction.new(:awoo, 'awoo:434500209012375553', /\baw(u+|oo+)\b/),
          Reaction.new(:bear, '🐻', /\bbe+a+ry?\b/),
          Reaction.new(:train, '🚄', /\b(choo+\s*choo+|tra+ins?)\b/)
        ]

        # Halloween Reacts
        if Time.now.month == 10 # If it's october
          reactions << Reaction.new(:skeletons, '💀', /\bspoo+ky+|sca+r+y+|skele(ton)?s?\b/)
          reactions << Reaction.new(:ghost, 'booGhost:496023553473380353', /\bgho+st|boo+\b/)
          reactions << Reaction.new(:pumpkin, 'pumpkin:496013175276175370', /\bpumpkins?\b/)
          reactions << Reaction.new(:rip, 'rip:496018846042554388', /\bri+p\b/)
          reactions << Reaction.new(:doot, '🎺', /\bdoo+t\b/)
        end

        reactions
      end
    end
  end
end
