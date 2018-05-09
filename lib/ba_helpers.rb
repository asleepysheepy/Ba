module Ba
  module BaHelpers
    def self.get_message_reactions(message)
      reactions = []
      reactions << '🐑' if message =~ /\bba+\b/
      reactions << 'nya:434511854505558019' if message =~ /\bnya+\b/
      reactions << 'awoo:434500209012375553' if message =~ /\baw(u+|o+)\b/
      reactions << '🚄' if message =~ /\btra+in\b/
      reactions
    end
  end
end
