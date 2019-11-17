# frozen_string_literal: true

module Ba
  module BaSupport
    module EmbedDefaults
      def self.embed_color
        0x17b6d6
      end

      def self.embed_url
        'https://github.com/flutterflies/Ba'
      end

      def self.embed_footer
        Discordrb::Webhooks::EmbedFooter.new(
          text: 'Ba is crafted with love by Sleepy Sheepy#0179',
          icon_url: BA_BOT.users[145_696_462_959_935_488].avatar_url
        )
      end

      def self.embed_thumbnail
        Discordrb::Webhooks::EmbedThumbnail.new url: BA_BOT.profile.avatar_url
      end

      def self.embed_author(author)
        Discordrb::Webhooks::EmbedAuthor.new(
          name: author.distinct,
          icon_url: author.avatar_url
        )
      end
    end
  end
end
