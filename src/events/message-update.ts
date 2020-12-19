import { Emote } from '../models/emote'
import { Event } from './event'
import { Message } from 'discord.js'

const MessageUpdateEvent: Event = {
  eventName: 'messageUpdate',
  handle: async (oldMessage: Message, newMessage: Message): Promise<void> => {
    const emotes = await Emote.forToday()

    emotes.forEach((emote) => {
      if (emote.shouldReact(newMessage.content)) {
        newMessage.react(emote.emoji)
      }
    })
  },
}

export { MessageUpdateEvent }
