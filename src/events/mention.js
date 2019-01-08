const createEmbed = require('../utils/embed');

module.exports = (message) => {
  const embedUrl = `https://discordapp.com/oauth2/authorize?&client_id=${message.client.user.id}&scope=bot&permissions=2112`;

  const embed = createEmbed(message.client, 'Ba<3', message.author)
    .setDescription('Ba Nya Awoo Choo Choo Arf Caw Beary')
    .addField('Github Link (PRs encouraged)', 'https://github.com/flutterflies/ba')
    .addField('Invite Link', embedUrl);

  message.channel.send(embed);
};