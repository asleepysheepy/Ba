# frozen_string_literal: true

module Ba
  module BaHelpers
    def get_message_reactions(message)
      reactions = []
      reactions << '🐑' if message =~ /\bba+\b/
      reactions << 'nya:434511854505558019' if message =~ /\bnya+[hn]?\b/
      reactions << 'awoo:434500209012375553' if message =~ /\baw(u+|oo+)\b/
      reactions << '🚄' if message =~ /\btra+in\b/
      reactions << 'arf:446677431160668161' if message =~ /\barf+\b/
      reactions
    end
  end
end
