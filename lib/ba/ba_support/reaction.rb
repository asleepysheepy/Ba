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
        [
          Reaction.new(:ba, '🐑', /\bba+\b/),
          Reaction.new(:arf, 'arf:446677431160668161', /\barf+\b/),
          Reaction.new(:caw, 'caw:452209651912540160', /\bca+w+\b/),
          Reaction.new(:nya, 'nya:434511854505558019', /\bnya+[hn]?\b/),
          Reaction.new(:awoo, 'awoo:434500209012375553', /\baw(u+|oo+)\b/),
          Reaction.new(:bear, '🐻', /\bbe+a+ry?\b/),
          Reaction.new(:train, '🚄', /\b(choo+\s*choo+|tra+in)\b/)
        ]
      end
    end
  end
end
