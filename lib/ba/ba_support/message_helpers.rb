# frozen_string_literal: true

require_relative 'reaction'

module Ba
  module BaSupport
    module MessageHelpers
      def self.get_message_reactions(event)
        message_reactions = []
        Reaction.reactions.each do |reaction|
          next unless reaction.should_react event.message.content.downcase
          message_reactions << reaction.emoji
          reaction_stats event.server.id, event.author.id, reaction.name
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
