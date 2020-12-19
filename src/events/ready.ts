import { Client } from 'discord.js'
import { Event } from './event'
import { createConnection } from 'typeorm'

const ReadyEvent: Event = {
  eventName: 'ready',
  handle: async (client: Client) => {
    try {
      await createConnection()
    } catch (error) {
      process.exit()
    }

    client.user?.setActivity('?ba help', { type: 'LISTENING' })
  },
}

export { ReadyEvent }
