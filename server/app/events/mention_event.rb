# frozen_string_literal: true

module MentionEvent
  def self.on(event)
    title = "BAAAAAAAAAAA!!!"
    description = "Ba Nya Awoo Choo Choo Arf Caw Beary"
    fields = [
      { name: "Github (PRs encouraged)", value: UrlService.github_url },
      { name: "Invite Link", value: UrlService.invite_url(event.bot) }
    ]

    EmbedService.send_embed(event: event, title: title, description: description, fields: fields)
  end
end
