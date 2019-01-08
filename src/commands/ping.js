const createEmbed = require('../utils/embed');

module.exports = {
  name: 'ping',
  description: 'Politely ask Ba if she is awake.',
  execute(message) {
    const embed = createEmbed(message.client, 'Ba Ping!', message.author);
    embed.addField('Response Time', `${message.client.ping}ms`);

    message.channel.send(embed);
  },
};