# frozen_string_literal: true

module Ba
  module BaSupport
    class Reaction
      attr_reader :name
      attr_reader :emoji
      attr_reader :regex

      def initialize(attributes = {})
        @name = attributes[:name]
        @emoji = attributes[:emoji]
        @regex = attributes[:regex]
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
          Reaction.new(name: :ba,
                       emoji: '🐑',
                       regex: /\bba+\b/),
          Reaction.new(name: :arf,
                       emoji: 'arf:446677431160668161',
                       regex: /\barf+\b/),
          Reaction.new(name: :caw,
                       emoji: 'caw:452209651912540160',
                       regex: /\bca+w+\b/),
          Reaction.new(name: :nya,
                       emoji: 'nya:434511854505558019',
                       regex: /\b(nya+[hn]?|me+ow)\b/),
          Reaction.new(name: :awoo,
                       emoji: 'awoo:434500209012375553',
                       regex: /\baw(u+|oo+)\b/),
          Reaction.new(name: :bear,
                       emoji: '🐻',
                       regex: /\bbe+a+ry?\b/),
          Reaction.new(name: :train,
                       emoji: '🚄',
                       regex: /\bchoo+\s*choo+\b/)
        ]
      end

      def self.october_reactions
        [
          Reaction.new(name: :skeletons,
                       emoji: '💀',
                       regex: /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/),
          Reaction.new(name: :ghost,
                       emoji: 'booGhost:496023553473380353',
                       regex: /\b(gho+st|boo+)\b/),
          Reaction.new(name: :pumpkin,
                       emoji: 'pumpkin:496013175276175370',
                       regex: /\bpumpkins?\b/),
          Reaction.new(name: :rip,
                       emoji: 'rip:496018846042554388',
                       regex: /\bri+p\b/),
          Reaction.new(name: :doot,
                       emoji: '🎺',
                       regex: /\bdoo+t\b/)
        ]
      end
    end
  end
end
