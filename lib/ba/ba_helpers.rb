# frozen_string_literal: true

module Ba
  module BaHelpers
    def self.get_message_reactions(message)
      reactions = []
      reactions << '🐑' if message =~ /\bba+\b/
      reactions << 'nya:434511854505558019' if message =~ /\bnya+[hn]?\b/
      reactions << 'awoo:434500209012375553' if message =~ /\baw(u+|oo+)\b/
      reactions << '🚄' if message =~ /\b(choo+\s*choo+|tra+in)\b/
      reactions << 'arf:446677431160668161' if message =~ /\barf+\b/
      reactions << '🐻' if message =~ /\bbe+a+ry?\b/
      reactions << 'caw:452209651912540160' if message =~ /\bca+w+\b/
      reactions
    end
  end
end
