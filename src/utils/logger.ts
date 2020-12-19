import Winston from 'winston'

const exceptionPath = __dirname + '/../../../logs/exception.log'

const fileTransportOptions = (filename: string): Winston.transports.FileTransportOptions => ({
  filename,
  maxsize: 10 * 1024 * 1024,
  maxFiles: 25,
  tailable: true,
  zippedArchive: true,
})

const Logger = Winston.createLogger({
  format: Winston.format.combine(
    Winston.format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss' }),
    Winston.format.errors({ stack: true }),
    Winston.format.splat(),
    Winston.format.json(),
    Winston.format.printf((info) => `${info.timestamp} ${info.level}: ${info.message}`),
  ),
  transports: [new Winston.transports.Console({ format: Winston.format.colorize()})],
  exceptionHandlers: [
    new Winston.transports.Console({ format: Winston.format.colorize()}),
    new Winston.transports.File(fileTransportOptions(exceptionPath)),
  ],
  exitOnError: false,
})

export { Logger }

