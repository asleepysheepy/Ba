# frozen_string_literal: true

require 'ba/emoji_config'

module Ba
  module Models
    class Emoji
      attr_reader :emote, :name, :regex

      def initialize(emote:, name:, regex:)
        @emote = emote
        @name = name
        @regex = regex
      end

      def should_react?(message)
        message =~ @regex
      end

      def self.emojis
        emotes = case Time.now.month
                 when 2
                   base_emojis.concat(february_emojis)
                 when 10
                   base_emojis.concat(october_emojis)
                 else
                   base_emojis
                 end

        emotes.map do |name|
          Emoji.new(name: name, regex: Ba::EmojiConfig::Regex::ALL[name], emote: Ba::EmojiConfig::Emote::ALL[name])
        end
      end

      def self.base_emojis
        [
          Ba::EmojiConfig::Names::ARF,
          Ba::EmojiConfig::Names::AWOO,
          Ba::EmojiConfig::Names::BA,
          Ba::EmojiConfig::Names::BEAR,
          Ba::EmojiConfig::Names::CAW,
          Ba::EmojiConfig::Names::COW,
          Ba::EmojiConfig::Names::FROG,
          Ba::EmojiConfig::Names::HONK,
          Ba::EmojiConfig::Names::MOON,
          Ba::EmojiConfig::Names::NYA,
          Ba::EmojiConfig::Names::RAT,
          Ba::EmojiConfig::Names::TRAIN,
          Ba::EmojiConfig::Names::WOOLOO
        ]
      end

      def self.february_emojis
        [
          Ba::EmojiConfig::Names::LOVE,
          Ba::EmojiConfig::Names::HEART,
          Ba::EmojiConfig::Names::KISS
        ]
      end

      def self.october_emojis
        [
          Ba::EmojiConfig::Names::DOOT,
          Ba::EmojiConfig::Names::GHOST,
          Ba::EmojiConfig::Names::PUMPKIN,
          Ba::EmojiConfig::Names::RIP,
          Ba::EmojiConfig::Names::SKELETONS
        ]
      end
    end
  end
end
