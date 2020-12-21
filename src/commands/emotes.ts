import { Command } from './utils/command'
import { Emote } from '../models/emote'
import { Message } from 'discord.js'

/**
 * Prints a list of all emotes which are active for today.
 */
export const EmotesCommand: Command = {
  name: 'emotes',
  aliases: ['reacts', 'reactions'],
  description: 'Gets a list of all the the emotes active for today.',
  usage: '?ba emotes',
  execute: async (message: Message): Promise<void> => {
    const emotes = await Emote.forToday()

    let returnMessage = 'Today\'s active emotes are:\n'
    emotes.forEach((emote) => {
      returnMessage += `• ${emote.formattedEmoji()} (\`${emote.name}\`)\n`
    })

    message.channel.send(returnMessage)
  },
}
