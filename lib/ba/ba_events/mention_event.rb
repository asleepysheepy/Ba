# frozen_string_literal: true

module Ba
  module BaEvents
    module MentionEvent
      extend Discordrb::EventContainer
      mention do |event|
        event.channel.send_embed do |embed|
          embed.title = 'BAAAAAAAAAAA!!!'
          embed.colour = Ba::BaSupport::EmbedDefaults.embed_color
          embed.url = Ba::BaSupport::EmbedDefaults.embed_url
          embed.timestamp = Time.now

          embed.description = 'Ba Nya Awoo Choo Choo Train Arf Caw Beary'

          embed.thumbnail = Ba::BaSupport::EmbedDefaults.embed_thumbnail
          embed.author = Ba::BaSupport::EmbedDefaults.embed_author event.author
          embed.footer = Ba::BaSupport::EmbedDefaults.embed_footer

          embed.add_field(
            name: 'Github Link (PRs encouraged)',
            value: 'https://github.com/flutterflies/ba'
          )
          embed.add_field(
            name: 'Invite Link',
            value: INVITE_URL
          )
        end
      end
    end
  end
end
