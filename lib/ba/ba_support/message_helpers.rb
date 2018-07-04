# frozen_string_literal: true

module Ba
  module BaSupport
    module MessageHelpers
      def self.reactions
        {
          ba: ['🐑', /\bba+\b/],
          arf: ['arf:446677431160668161', /\barf+\b/],
          caw: ['caw:452209651912540160', /\bca+w+\b/],
          nya: ['nya:434511854505558019', /\bnya+[hn]?\b/],
          awoo: ['awoo:434500209012375553', /\baw(u+|oo+)\b/],
          bear: ['🐻', /\bbe+a+ry?\b/],
          train: ['🚄', /\b(choo+\s*choo+|tra+in)\b/]
        }
      end

      def self.get_message_reactions(event)
        message_reactions = []
        reactions.each do |name, reaction|
          next unless event.message.content.downcase =~ reaction.last

          message_reactions << reaction.first
          reaction_stats event.server.id, event.author.id, name
        end
        message_reactions
      end

      def self.reaction_stats(server_id, author_id, emoji)
        REDIS.pipelined do
          REDIS.incr 'global_reacts'
          REDIS.incr "global_#{emoji}"
          REDIS.incr "#{server_id}_reacts"
          REDIS.incr "#{server_id}_#{emoji}"
          REDIS.incr "#{author_id}_reacts"
          REDIS.incr "#{author_id}_#{emoji}"
          REDIS.incr "#{server_id}_#{author_id}_reacts"
          REDIS.incr "#{server_id}_#{author_id}_#{emoji}"
        end
      end
    end
  end
end
