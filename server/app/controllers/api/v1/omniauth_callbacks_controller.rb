# frozen_string_literal: true

module Api
  module V1
    class OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
      protected

      def assign_provider_attrs(user, auth_hash)
        DiscordUserService.update_discord_user_object user, auth_hash
      end
    end
  end
end
