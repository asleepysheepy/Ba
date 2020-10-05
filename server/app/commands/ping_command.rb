# frozen_string_literal: true

module PingCommand
  def self.attributes
    {
      description: "Politely ask Ba if she is awake.",
      help_available: true,
      max_args: 0,
      rescue: "Oh no, something terrible has happened. An Error occured executing this command :c",
      usage: "?ba ping"
    }
  end

  def self.execute(event)
    delay = "#{((Time.zone.now - event.timestamp) * 1000).to_i}ms"

    fields = [{ name: "Response Time", value: delay }]

    EmbedService.send_embed(event: event, title: "Ba Ping!", fields: fields)
  end
end
