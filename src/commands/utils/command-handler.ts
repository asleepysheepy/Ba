import { Command } from './command'
import { Commands } from '../'
import { Logger } from '../../utils/logger'
import { Message } from 'discord.js'

/**
 * Looks up a command object from a given string.
 *
 * @param commandName the name (or alias) of the command to look up
 */
const findCommand = (commandName: string): Command | undefined => {
  return Commands.commandList.find((c) => c.name === commandName || c.aliases?.includes(commandName))
}

/**
 * Checks that the correct number of arguments was passed to the command.
 *
 * @param command The command being executed.
 * @param args The arguments passed to the command
 * @param message The message object with the command
 */
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

/**
 * Determines a command from a given message and executes it.
 *
 * @param message The message which comtains the command.
 */
const handleCommand = async (message: Message): Promise<void> => {
  if (!message.content.startsWith(Commands.COMMAND_PREFIX)) { return }
  if (message.author.bot) { return }

  const args = message.content.slice(Commands.COMMAND_PREFIX.length).split(/ +/)
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

export const CommandHandler = {
  handleCommand,
}
