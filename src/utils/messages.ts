import { COMMAND_PREFIX } from '../commands'
import { Client, Message } from 'discord.js'
import { Emote } from '../models/emote'
import { createEmbed } from './embeds'

export const MessageUtils = {
  handleMention: async (message: Message, client: Client): Promise<void> => {
    if (!client.user) { return }
    if (!message.guild) { return }
    if (!message.mentions.has(client.user?.id)) { return }

    const response = await createEmbed(message.author, client)
    response.setTitle('Welcome to Ba! 🐑')
      .setDescription('Ba is a bot the looks to spice up your server by adding fun reactions to your messages.')
      .addField('Github (PRs encouraged)', 'https://github.com/asleepysheepy/Ba')
      .addField('Invite Link', client.generateInvite({ permissions: ['SEND_MESSAGES', 'ADD_REACTIONS'] }))
    message.channel.send(response)
  },

  handleReactions: async (message: Message, client: Client): Promise<void> => {
    if (message.content.startsWith(COMMAND_PREFIX)) { return }
    if (client.user && client.user.id === message.author.id) { return }

    const emotes = await Emote.forToday()

    emotes.forEach((emote) => {
      if (emote.shouldReact(message.content)) {
        message.react(emote.emoji)
      }
    })
  },
}
