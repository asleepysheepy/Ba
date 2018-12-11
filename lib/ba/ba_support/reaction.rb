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
        reactions = base_reactions
        reactions.concat(october_reactions) if Time.now.month == 10

        reactions
      end

      def self.base_reactions
        [
          Reaction.new(:ba, '🐑', /\bba+\b/),
          Reaction.new(:arf, 'arf:446677431160668161', /\barf+\b/),
          Reaction.new(:caw, 'caw:452209651912540160', /\bca+w+\b/),
          Reaction.new(:nya, 'nya:434511854505558019', /\b(nya+[hn]?|me+ow)\b/),
          Reaction.new(:awoo, 'awoo:434500209012375553', /\baw(u+|oo+)\b/),
          Reaction.new(:bear, '🐻', /\bbe+a+ry?\b/),
          Reaction.new(:train, '🚄', /\bchoo+\s*choo+\b/)
        ]
      end

      def self.october_reactions
        [
          Reaction.new(:skeletons,
                       '💀',
                       /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/),
          Reaction.new(:ghost,
                       'booGhost:496023553473380353',
                       /\b(gho+st|boo+)\b/),
          Reaction.new(:pumpkin,
                       'pumpkin:496013175276175370',
                       /\bpumpkins?\b/),
          Reaction.new(:rip,
                       'rip:496018846042554388',
                       /\bri+p\b/),
          Reaction.new(:doot,
                       '🎺',
                       /\bdoo+t\b/)
        ]
      end
    end
  end
end
