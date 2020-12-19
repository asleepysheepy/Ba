import { Client, Message } from 'discord.js'
import { Emote } from '../models/emote'
import { Event } from './event'
import { createEmbed } from '../utils/embeds'

const checkMention = async (message: Message, client: Client): Promise<void> => {
  if (!client.user) { return }
  if (!message.guild) { return }
  if (!message.mentions.has(client.user?.id)) { return }

  const response = await createEmbed(message.author, client)
  response.setTitle('Welcome to Ba! 🐑')
    .setDescription('Ba is a bot the looks to spice up your server by adding fun reactions to your messages.')
    .addField('Github (PRs encouraged)', 'https://github.com/asleepysheepy/Ba')
    .addField('Invite Link', client.generateInvite({ permissions: ['SEND_MESSAGES', 'ADD_REACTIONS'] }))
  message.channel.send(response)
}

const checkReactions = async (message: Message): Promise<void> => {
  const emotes = await Emote.forToday()

  emotes.forEach((emote) => {
    if (emote.shouldReact(message.content)) {
      message.react(emote.emoji)
    }
  })
}

const MessageEvent: Event = {
  eventName: 'message',
  handle: (message: Message, client: Client): void => {
    checkMention(message, client)
    checkReactions(message)
  },
}

export { MessageEvent }
