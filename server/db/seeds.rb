# frozen_string_literal: true

# Emotes
emotes = [
  { name: "arf", emoji: "arf:446677431160668161", regex: '\barf+\b', available_month: Emote::Months::EVERY },
  { name: "awoo", emoji: "awoo:434500209012375553", regex: '\baw(u+|oo+)\b', available_month: Emote::Months::EVERY },
  { name: "ba", emoji: "🐑", regex: '\bba+\b', available_month: Emote::Months::EVERY },
  { name: "bear", emoji: "🐻", regex: '\bbe+a+ry?\b', available_month: Emote::Months::EVERY },
  { name: "caw", emoji: "caw:522999846043648010", regex: '\bca+w+\b', available_month: Emote::Months::EVERY },
  { name: "cow", emoji: "🐮", regex: '\bmoo+\b', available_month: Emote::Months::EVERY },
  { name: "frog", emoji: "🐸", regex: '\bri+bbi+t\b|\bcro+a+k\b', available_month: Emote::Months::EVERY },
  { name: "honk", emoji: "honk:632708841620111390", regex: '\bho+nk\b', available_month: Emote::Months::EVERY },
  { name: "moon", emoji: "goodnight:612080527591342099", regex: '\b((ni){2,}|g\'night|good night)\b', available_month: Emote::Months::EVERY },
  { name: "nya", emoji: "nya:434511854505558019", regex: '\b(nya+[hn]?|me+ow)\b', available_month: Emote::Months::EVERY },
  { name: "rat", emoji: "🐀", regex: '\bsque+a+k\b', available_month: Emote::Months::EVERY },
  { name: "train", emoji: "🚄", regex: '\bchoo+\s*choo+\b', available_month: Emote::Months::EVERY },
  { name: "wooloo", emoji: "a:wooloo:605781427698663424", regex: '\bwoo+loo+\b', available_month: Emote::Months::EVERY },
  { name: "love", emoji: "😍", regex: '\blo+ve+\b', available_month: Emote::Months::FEBRUARY },
  { name: "heart", emoji: "💜", regex: '\bhe+a+rt\b', available_month: Emote::Months::FEBRUARY },
  { name: "kiss", emoji: "😘", regex: '\bki+ss+\b', available_month: Emote::Months::FEBRUARY },
  { name: "doot", emoji: "🎺", regex: '\bdoo+t\b', available_month: Emote::Months::OCTOBER },
  { name: "ghost", emoji: "boo:496023553473380353", regex: '\b(gho+st|boo+)\b', available_month: Emote::Months::OCTOBER },
  { name: "pumpkin", emoji: "pumpkin:496013175276175370", regex: '\bpumpkins?\b', available_month: Emote::Months::OCTOBER },
  { name: "rip", emoji: "rip:496018846042554388", regex: '\bri+p\b', available_month: Emote::Months::OCTOBER },
  { name: "skeletons", emoji: "💀", regex: '\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b', available_month: Emote::Months::OCTOBER }
]

emotes.each { |e| Emote.create(e) }
