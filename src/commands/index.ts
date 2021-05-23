import { EmotesCommand } from './emotes'

/**
 * The prefix used for executing commands.
 */
const COMMAND_PREFIX = '?ba '

/**
 * A list of all commands.
 */
const commandList = [
  EmotesCommand
]

export const Commands = {
  COMMAND_PREFIX,
  commandList
}
