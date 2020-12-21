import { Message } from 'discord.js'

/**
 * Command executable by the command handler.
 */
export interface Command {
  /**
   * The name of the command
   */
  name: string,

  /**
   * An array of aliases that can also be used to execute the command.
   */
  aliases?: Array<string>,

  /**
   * A description of the command used in help messages.
   */
  description: string,

  /**
   * The maximum number of arguments allowed to be passed to the command.
   */
  maxArgs?: number,

  /**
   * The minimum number of arguments allowed to be passed to the command.
   */
  minArgs?: number,

  /**
   * A string describing the usage of the command. Used in help messages.
   */
  usage: string,

  /**
   * Function containing the command's logic.
   *
   * @param message The message containing the command.
   * @param args A list of arguments passed to the command.
   */
  execute(message: Message, args?: Array<string>): void,
}
