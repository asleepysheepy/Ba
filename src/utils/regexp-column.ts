import { Column, ColumnOptions } from 'typeorm'

/**
 * Class for transforming a string to a regex and vice versa.
 */
const RegExpStringTransformer = {
  /**
   * Turns a regular expression into a string.
   *
   * @param value the Regex to process
   */
  to: (value: RegExp): string => {
    return value.toString()
  },

  /**
   * Turns a string into a RegExp instance.
   *
   * @param value the string to convert into a regexp
   */
  from: (value: string): RegExp => {
    const match = value.match(/^\/(.*)\/(.*)$/)
    if (match != null) {
      const [, pattern, flags] = match
      return new RegExp(pattern, flags)
    } else {
      throw new Error(`"${value}" is not a regular expression`)
    }
  }
}

/**
 * TypeORM property decorator for regular expression columns.
 *
 * @param opts The column options; see https://typeorm.io/#/entities/column-options
 */
export function RegExpColumn (opts: ColumnOptions = {}): PropertyDecorator {
  opts.type = String
  opts.transformer = RegExpStringTransformer
  return Column(opts)
}
