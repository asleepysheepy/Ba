# frozen_string_literal: true

require 'active_model'

module Ba
  module Models
    class Emoji
      include ActiveModel::Model
      attr_accessor :emote, :regex

      def should_react?(message)
        message =~ @regex
      end

      def self.emojis
        base_emojis.tap do |emojis|
          emojis.merge!(february_emojis) if Time.now.month == 2
          emojis.merge!(october_emojis) if Time.now.month == 10
        end
      end

      def self.base_emojis
        {
          arf: Emoji.new(emote: 'arf:446677431160668161', regex: /\barf+\b/),
          awoo: Emoji.new(emote: 'awoo:434500209012375553', regex: /\baw(u+|oo+)\b/),
          ba: Emoji.new(emote: '🐑', regex: /\bba+\b/),
          bear: Emoji.new(emote: '🐻', regex: /\bbe+a+ry?\b/),
          caw: Emoji.new(emote: 'caw:522999846043648010', regex: /\bca+w+\b/),
          cow: Emoji.new(emote: '🐮', regex: /\bmoo+\b/),
          frog: Emoji.new(emote: '🐸', regex: /\bri+bbi+t\b|\bcro+a+k\b/),
          honk: Emoji.new(emote: 'honk:632708841620111390', regex: /\bho+nk\b/),
          moon: Emoji.new(
            emote: 'goodnight:612080527591342099',
            regex: /\b((ni){2,}|g'night|good night)\b/
          ),
          nya: Emoji.new(emote: 'nya:434511854505558019', regex: /\b(nya+[hn]?|me+ow)\b/),
          rat: Emoji.new(emote: '🐀', regex: /\bsque+a+k\b/),
          train: Emoji.new(emote: '🚄', regex: /\bchoo+\s*choo+\b/),
          wooloo: Emoji.new(emote: 'a:wooloo:605781427698663424', regex: /\bwoo+loo+\b/)
        }
      end

      def self.february_emojis
        {
          love: Emoji.new(emote: '😍', regex: /\blo+ve+\b/),
          heart: Emoji.new(emote: '💜', regex: /\bhe+a+rt\b/),
          kiss: Emoji.new(emote: '😘', regex: /\bki+ss+\b/)
        }
      end

      def self.october_emojis
        {
          doot: Emoji.new(emote: '🎺', regex: /\bdoo+t\b/),
          ghost: Emoji.new(emote: 'boo:496023553473380353', regex: /\b(gho+st|boo+)\b/),
          pumpkin: Emoji.new(emote: 'pumpkin:496013175276175370', regex: /\bpumpkins?\b/),
          rip: Emoji.new(emote: 'rip:496018846042554388', regex: /\bri+p\b/),
          skeletons: Emoji.new(emote: '💀', regex: /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/)
        }
      end
    end
  end
end
