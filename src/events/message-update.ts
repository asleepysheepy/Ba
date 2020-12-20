import { Client, Message } from 'discord.js'
import { Event } from './event'
import { MessageUtils } from '../utils/messages'

export const MessageUpdateEvent: Event = {
  eventName: 'messageUpdate',
  handle: async (oldMessage: Message, newMessage: Message, client: Client): Promise<void> => {
    MessageUtils.handleReactions(newMessage, client)
  },
}
