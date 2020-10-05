# frozen_string_literal: true

module StatsCommand
  def self.attributes
    {
      description: "Gets meta stats about Ba such as uptime and number of servers",
      help_available: true,
      max_args: 0,
      rescue: "Oh no, something terrible has happened. An Error occured executing this command :c",
      usage: "?ba stats"
    }
  end

  def self.execute(event)
    bot = event.bot
    fields = [
      { name: "Servers", value: bot.servers.count, inline: true },
      { name: "Users", value: bot.users.count, inline: true }
    ]

    EmbedService.send_embed(event: event, title: "Ba Statistics!", fields: fields)
  end
end
