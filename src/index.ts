import events from './events'
import { Client } from 'discord.js'

/**
 * Registers all the event listeners used by Ba.
 *
 * @param client - The Discord.js client instance
 */
function setupEvents(client: Client): void {
  events.forEach((event) => {
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const handle = async (...args: Array<any>) => await event.handle(...args, client)
    client.on(event.eventName, handle)
  })
}

/**
 * The main function that starts Ba.
 */
async function startBa(): Promise<void> {
  const client = new Client()
  setupEvents(client)

  try {
    await client.login(process.env['BOT_TOKEN'])
  } catch (error) {
    process.exit()
  }
}

startBa().catch(() => {
  process.exit()
})
