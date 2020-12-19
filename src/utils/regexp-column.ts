import { Column, ColumnOptions } from 'typeorm'

class RegExpStringTransformer {
  static to(value: RegExp): string {
    return value.toString()
  }

  static from(value: string): RegExp {
    const match = value.match(/^\/(.*)\/(.*)$/)
    if (match) {
      const [, pattern, flags] = match
      return new RegExp(pattern, flags)
    } else {
      throw new Error(`"${value}" is not a regular expression`)
    }
  }
}

export function RegExpColumn(opts: ColumnOptions = {}): PropertyDecorator {
  opts.type = String
  opts.transformer = RegExpStringTransformer
  return Column(opts)
}
