import events from './events'
import { Client } from 'discord.js'
import { Logger } from './utils/logger'

/**
 * Registers all the event listeners used by Ba.
 *
 * @param client - The Discord.js client instance
 */
function setupEvents(client: Client): void {
  events.forEach((event) => {
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const handle = async (...args: Array<any>) => await event.handle(...args, client)
    Logger.info(`Registering an handler for ${event.eventName} events.`)
    client.on(event.eventName, handle)
  })
}

/**
 * The main function that starts Ba.
 */
async function startBa(): Promise<void> {
  Logger.info('Welcome to Ba 🐑!')

  const client = new Client()
  setupEvents(client)

  try {
    await client.login(process.env['BOT_TOKEN'])
  } catch (error) {
    Logger.error('Unable to log in to discord, did you set your bot token?')
    process.exit()
  }

  Logger.info('Successfully logged in to Discord.')
}

startBa().catch((error) => {
  Logger.error(`Unable to start Ba.\n${error}`)
  process.exit()
})
