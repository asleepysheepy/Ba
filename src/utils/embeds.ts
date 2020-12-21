import { Client, MessageEmbed, User } from 'discord.js'

/**
 * Creates a new message embed object and set several default values.
 *
 * @param author The author the message being replied to.
 * @param client The bot's client instance
 */
const createEmbed = async (author: User, client: Client): Promise<MessageEmbed> => {
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

export const EmbedUtils = {
  createEmbed,
}
