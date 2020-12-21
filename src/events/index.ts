import { MessageEvent } from './message'
import { MessageUpdateEvent } from './message-update'
import { ReadyEvent } from './ready'

const eventsList = [
  MessageEvent,
  MessageUpdateEvent,
  ReadyEvent,
]

export const Events = {
  eventsList,
}
