# frozen_string_literal: true

module Ba
  module BaSupport
    class Reaction
      attr_reader :emoji
      attr_reader :regex

      def initialize(emoji, regex)
        @emoji = emoji
        @regex = regex
      end

      def should_react(message)
        message =~ @regex
      end

      def self.reactions
        reactions = base_reactions
        reactions.concat(february_reactions) if Time.now.month == 2
        reactions.concat(october_reactions) if Time.now.month == 10

        reactions
      end

      def self.base_reactions
        {
          arf: Reaction.new('arf:446677431160668161', /\barf+\b/),
          awoo: Reaction.new('awoo:434500209012375553', /\baw(u+|oo+)\b/),
          ba: Reaction.new('🐑', /\bba+\b/),
          bear: Reaction.new('🐻', /\bbe+a+ry?\b/),
          caw: Reaction.new('caw:522999846043648010', /\bca+w+\b/),
          cow: Reaction.new('🐮', /\bmoo+\b/),
          nya: Reaction.new('nya:434511854505558019', /\b(nya+[hn]?|me+ow)\b/),
          rat: Reaction.new('🐀', /\bsque+a+k\b/),
          train: Reaction.new('🚄', /\bchoo+\s*choo+\b/)
        }
      end

      def self.february_reactions
        {
          love: Reaction.new('😍', /\blo+ve+\b/),
          heart: Reaction.new('💜', /\bhe+a+rt\b/),
          kiss: Reaction.new('😘', /\bki+ss+\b/)
        }
      end

      def self.october_reactions
        {
          doot: Reaction.new('🎺', /\bdoo+t\b/),
          ghost: Reaction.new('boo:496023553473380353', /\b(gho+st|boo+)\b/),
          pumpkin: Reaction.new('pumpkin:496013175276175370', /\bpumpkins?\b/),
          rip: Reaction.new('rip:496018846042554388', /\bri+p\b/),
          skeletons: Reaction.new('💀', /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/)
        }
      end
    end
  end
end
