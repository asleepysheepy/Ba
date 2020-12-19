import { Client, MessageEmbed, User } from 'discord.js'

export async function createEmbed(author: User, client: Client): Promise<MessageEmbed> {
  const embed = new MessageEmbed()
    .setColor('#17b6d6')
    .setURL('https://github.com/asleepysheepy/Ba')
    .setTimestamp(new Date())

  const botAvatar = client.user?.avatarURL()
  if (botAvatar) { embed.setThumbnail(botAvatar) }

  const authorAvatar = author.avatarURL()
  if (authorAvatar) { embed.setAuthor(author.tag, authorAvatar) }

  const sheepyUser = await client.users.fetch('145696462959935488')
  const sheepyAvatar = sheepyUser.avatarURL()
  if (sheepyAvatar) { embed.setFooter('Ba is crafted with love by Sleepy Sheepy#0179', sheepyAvatar) }

  return embed
}
