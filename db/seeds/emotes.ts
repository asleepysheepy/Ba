/* eslint no-useless-escape: 0 */
import { Connection } from 'typeorm'
import { Emote, Months } from '../../src/models/emote'
import { Factory, Seeder } from 'typeorm-seeding'

export default class CreateEmotes implements Seeder {
  public async run(factory: Factory, connection: Connection): Promise<void> {
    await connection
      .createQueryBuilder()
      .insert()
      .into(Emote)
      .values([
        { name: 'arf', emoji: 'arf:446677431160668161', regex: /\barf+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'awoo', emoji: 'awoo:434500209012375553', regex: /\baw(u+|oo+)\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'ba', emoji: '🐑', regex: /\bba+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'bear', emoji: '🐻', regex: /\bbe+a+ry?\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'caw', emoji: 'caw:522999846043648010', regex: /\bca+w+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'cow', emoji: '🐮', regex: /\bmoo+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'frog', emoji: '🐸', regex: /\bri+bbi+t\b|\bcro+a+k\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'honk', emoji: 'honk:632708841620111390', regex: /\bho+nk\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'moon', emoji: 'goodnight:612080527591342099', regex: /\b((ni){2,}|g\'night|good night)\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'nya', emoji: 'nya:434511854505558019', regex: /\b(nya+[hn]?|me+ow)\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'rat', emoji: '🐀', regex: /\bsque+a+k\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'train', emoji: '🚄', regex: /\bchoo+\s*choo+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'wooloo', emoji: 'a:wooloo:605781427698663424', regex: /\bwoo+loo+\b/, availableMonth: Months.EVERY, createdAt: new Date() },
        { name: 'love', emoji: '😍', regex: /\blo+ve+\b/, availableMonth: Months.FEBRUARY, createdAt: new Date() },
        { name: 'heart', emoji: '💜', regex: /\bhe+a+rt\b/, availableMonth: Months.FEBRUARY, createdAt: new Date() },
        { name: 'kiss', emoji: '😘', regex: /\bki+ss+\b/, availableMonth: Months.FEBRUARY, createdAt: new Date() },
        { name: 'doot', emoji: '🎺', regex: /\bdoo+t\b/, availableMonth: Months.OCTOBER, createdAt: new Date() },
        { name: 'ghost', emoji: 'boo:496023553473380353', regex: /\b(gho+st|boo+)\b/, availableMonth: Months.OCTOBER, createdAt: new Date() },
        { name: 'pumpkin', emoji: 'pumpkin:496013175276175370', regex: /\bpumpkins?\b/, availableMonth: Months.OCTOBER, createdAt: new Date() },
        { name: 'rip', emoji: 'rip:496018846042554388', regex: /\bri+p\b/, availableMonth: Months.OCTOBER, createdAt: new Date() },
        { name: 'skeletons', emoji: '💀', regex: /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/, availableMonth: Months.OCTOBER, createdAt: new Date() },
      ])
      .execute()
  }
}
