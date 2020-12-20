import { Message } from 'discord.js'

export interface Command {
  name: string,
  aliases?: Array<string>,
  description: string,
  maxArgs?: number,
  minArgs?: number,
  usage: string,
  execute(message: Message, args?: Array<string>): void,
}
