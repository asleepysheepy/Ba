import { Event } from './event'
import { Message } from 'discord.js'
import { MessageUtils } from '../utils/messages'

export const MessageUpdateEvent: Event = {
  eventName: 'messageUpdate',
  handle: async (oldMessage: Message, newMessage: Message): Promise<void> => {
    MessageUtils.handleReactions(newMessage)
  },
}
