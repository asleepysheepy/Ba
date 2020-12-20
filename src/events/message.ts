import { Client, Message } from 'discord.js'
import { Event } from './event'
import { MessageUtils } from '../utils/messages'

export const MessageEvent: Event = {
  eventName: 'message',
  handle: (message: Message, client: Client): void => {
    MessageUtils.handleMention(message, client)
    MessageUtils.handleReactions(message, client)
  },
}
