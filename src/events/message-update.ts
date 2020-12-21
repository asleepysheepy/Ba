import { Client, Message } from 'discord.js'
import { Event } from './event'
import { MessageUtils } from '../utils/messages'

/**
 * Fired when a message is updated.
 *
 * Used for:
 * - adding reactions to edited messages.
 */
export const MessageUpdateEvent: Event = {
  eventName: 'messageUpdate',
  handle: async (oldMessage: Message, newMessage: Message, client: Client): Promise<void> => {
    MessageUtils.handleReactions(newMessage, client)
  },
}
