const createEmbed = require('../utils/embed');

function uptimeAsString(uptime) {
  const seconds = Math.floor(uptime % 60);
  const minutes = Math.floor(uptime / 60 % 60);
  const hours = Math.floor(uptime / (60 * 60) % 24);
  const days = Math.floor(uptime / (60 * 60 * 24));

  return `${days} days, ${hours} hours, ${minutes} minutes, and ${seconds} seconds.`;
}

module.exports = {
  name: 'bot_stats',
  description: 'Gets meta stats about ba such as uptime and number of servers',
  execute(message) {
    const embed = createEmbed(message.client, 'Ba Statistics!', message.author);
    embed.addField('Servers', message.client.guilds.size, true);
    embed.addField('Users', message.client.users.size, true);
    embed.addField('Uptime', uptimeAsString(message.client.uptime));

    message.channel.send(embed);
  },
};