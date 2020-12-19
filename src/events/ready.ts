import { Client } from 'discord.js'
import { Event } from './event'
import { Logger } from '../utils/logger'
import { createConnection } from 'typeorm'

const ReadyEvent: Event = {
  eventName: 'ready',
  handle: async (client: Client) => {
    try {
      await createConnection()
    } catch (error) {
      Logger.error(`An error occured while connecting to the database: ${error}`)
      process.exit()
    }

    client.user?.setActivity('?ba help', { type: 'LISTENING' })
  },
}

export { ReadyEvent }
