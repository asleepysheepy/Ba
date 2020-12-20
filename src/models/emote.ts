import {
  BaseEntity,
  BeforeInsert,
  BeforeUpdate,
  Column,
  Entity,
  PrimaryGeneratedColumn,
} from 'typeorm'
import { RegExpColumn } from '../utils/regexp-column'

/**
 * List of available months for Emotes to be active in.
 *
 * Contains all 12 months of the year plus an additional
 * entry for all months.
 */
enum Months {
  JANUARY,
  FEBRUARY,
  MARCH,
  APRIL,
  MAY,
  JUNE,
  JULY,
  AUGUST,
  SEPTEMBER,
  OCTOBER,
  NOVEMBER,
  DECEMBER,
  EVERY,
}

/**
 * Represents an Emote that Ba will use to react to messages with.
 */
@Entity({ name: 'emotes' })
class Emote extends BaseEntity {
  /**
   * The database id of the Emote.
   */
  @PrimaryGeneratedColumn()
  id!: number

  /**
   * The month during which this Emote should be active.
   */
  @Column({ name: 'available_month' })
  availableMonth!: Months

  /**
   * The emoji to use for the reaction.
   *
   * This can be either a Unicode emoji like `🐑` or a custom
   * Discord emoji like `a:wooloo:605781427698663424`
   */
  @Column()
  emoji!: string

  /**
   * The name of the Emote.
   */
  @Column()
  name!: string

  /**
   * The regular expression used to determine whether or not to
   * react to a message.
   */
  @RegExpColumn()
  regex!: RegExp

  /**
   * The timestamp of when this Emote was created.
   */
  @Column({ name: 'created_at' })
  createdAt!: Date

  /**
   * The timestamp of the most recent time this Emote was updated.
   */
  @Column({ name: 'updated_at' })
  updatedAt?: Date

  /**
   * Determines whether or not Ba should react to the given message
   * with the Emote.
   *
   * @param message The message to test against
   */
  shouldReact(message: string): boolean {
    // const regexp = new RegExp(this.regex, 'i')
    return this.regex.test(message)
  }

  /**
   * Formats the emoji for use in discord messages
   */
  formattedEmoji(): string {
    if ( this.emoji.startsWith('a:')) { return `<${this.emoji}>` }

    return this.emoji.includes(':') ? `<:${this.emoji}>` : this.emoji
  }

  /**
   * Listener for the beforeInsert event.
   *
   * Sets the created at timestamp.
   */
  @BeforeInsert()
  onBeforeInsert(): void {
    this.createdAt = new Date()
  }

  /**
   * Listener for the beforeUpdate event.
   *
   * Sets the updated at timestamp.
   */
  @BeforeUpdate()
  onBeforeUpdate(): void {
    this.updatedAt = new Date()
  }

  /**
   * Finds all the Emotes for a given month.
   *
   * @param month The month for which to query.
   */
  static async forMonth(month: Months): Promise<Array<Emote>> {
    return await Emote.find({ where: { availableMonth: month }})
  }

  /**
   * Finds all Emotes that are active year round.
   */
  static async yearRound(): Promise<Array<Emote>> {
    return await Emote.forMonth(Months.EVERY)
  }

  static async forToday(today = new Date()): Promise<Array<Emote>> {
    const month = today.getMonth()

    const yearRound = await Emote.yearRound()
    const forMonth = await Emote.forMonth(month)

    return [...yearRound, ...forMonth]
  }
}

export { Emote, Months }
