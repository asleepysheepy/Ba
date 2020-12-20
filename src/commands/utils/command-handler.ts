import commands from '../'
import { Command } from './command'
import { Logger } from '../../utils/logger'
import { Message } from 'discord.js'

const COMMAND_PREFIX = '?ba '

const findCommand = (commandName: string): Command | undefined => {
  return commands.find((c) => c.name === commandName || c.aliases?.includes(commandName))
}

const checkArgs = (command: Command, args: Array<string>, message: Message): boolean => {
  if (command.minArgs) {
    if (args.length < command.minArgs) {
      message.channel.send(`Too few args passed to command: ${command.name}.\nExpected: ${command.minArgs}, Got: ${args.length}.`)
      return false
    }
  }

  if (command.maxArgs) {
    if (args.length > command.maxArgs) {
      message.channel.send(`Too many args passed to command: ${command.name}.\nExpected: ${command.minArgs}, Got: ${args.length}.`)
      return false
    }
  }

  return true
}

export const handleCommand = async (message: Message): Promise<void> => {
  if (!message.content.startsWith(COMMAND_PREFIX)) { return }
  if (message.author.bot) { return }

  const args = message.content.slice(COMMAND_PREFIX.length).split(/ +/)
  const commandName = args.shift()?.toLowerCase()
  if (!commandName) { return }

  const command = findCommand(commandName)
  if (!command) { return }

  if (!checkArgs(command, args, message)) { return }

  try {
    await command.execute(message, args)
  } catch (error) {
    message.channel.send(`An error ocurred executing command: ${commandName}`)
    Logger.error(`Attempted to exectue the command ${commandName} but the following error occured: ${error}`)
  }
}
