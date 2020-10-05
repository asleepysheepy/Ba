# frozen_string_literal: true

module UrlService
  GITHUB_URL = "https://github.com/asleepysheepy/Ba"
  PERMISSIONS = "permissions=2112"

  def self.invite_url(bot)
    "#{bot.invite_url}&#{PERMISSIONS}"
  end

  def github_url
    GITHUB_URL
  end
end
