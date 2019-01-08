const Discord = require('discord.js');

const embedColor = '#17b6d6';
const embedUrl = 'https://github.com/flutterflies/Ba';
const footerText = 'Ba is crafted with love by Sleepy Sheepy#0179';

module.exports = (client, title, author) => {
  return new Discord.RichEmbed()
    .setColor(embedColor)
    .setTitle(title)
    .setURL(embedUrl)
    .setAuthor(`${author.username}#${author.discriminator}`, author.displayAvatarURL)
    .setThumbnail(client.user.displayAvatarURL)
    .setTimestamp()
    .setFooter(footerText, client.users.get('145696462959935488').displayAvatarURL);
};