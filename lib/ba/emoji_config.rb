# frozen_string_literal: true

module Ba
  module EmojiConfig
    module Names
      ALL = [
        ARF = 'arf',
        AWOO = 'awoo',
        BA = 'ba',
        BEAR = 'bear',
        CAW = 'caw',
        COW = 'cow',
        FROG = 'frog',
        HONK = 'honk',
        MOON = 'moon',
        NYA = 'nya',
        RAT = 'rat',
        TRAIN = 'train',
        WOOLOO = 'wooloo',
        LOVE = 'love',
        HEART = 'heart',
        KISS = 'kiss',
        DOOT = 'doot',
        GHOST = 'ghost',
        PUMPKIN = 'pumpkin',
        RIP = 'rip',
        SKELETONS = 'skeletons'
      ].freeze
    end

    module Emote
      ALL = {
        EmojiConfig::Names::ARF => 'arf:446677431160668161',
        EmojiConfig::Names::AWOO => 'awoo:434500209012375553',
        EmojiConfig::Names::BA => '🐑',
        EmojiConfig::Names::BEAR => '🐻',
        EmojiConfig::Names::CAW => 'caw:522999846043648010',
        EmojiConfig::Names::COW => '🐮',
        EmojiConfig::Names::FROG => '🐸',
        EmojiConfig::Names::HONK => 'honk:632708841620111390',
        EmojiConfig::Names::MOON => 'goodnight:612080527591342099',
        EmojiConfig::Names::NYA => 'nya:434511854505558019',
        EmojiConfig::Names::RAT => '🐀',
        EmojiConfig::Names::TRAIN => '🚄',
        EmojiConfig::Names::WOOLOO => 'a:wooloo:605781427698663424',
        EmojiConfig::Names::LOVE => '😍',
        EmojiConfig::Names::HEART => '💜',
        EmojiConfig::Names::KISS => '😘',
        EmojiConfig::Names::DOOT => '🎺',
        EmojiConfig::Names::GHOST => 'boo:496023553473380353',
        EmojiConfig::Names::PUMPKIN => 'pumpkin:496013175276175370',
        EmojiConfig::Names::RIP => 'rip:496018846042554388',
        EmojiConfig::Names::SKELETONS => '💀'
      }.freeze
    end

    module Regex
      ALL = {
        EmojiConfig::Names::ARF => /\barf+\b/,
        EmojiConfig::Names::AWOO => /\baw(u+|oo+)\b/,
        EmojiConfig::Names::BA => /\bba+\b/,
        EmojiConfig::Names::BEAR => /\bbe+a+ry?\b/,
        EmojiConfig::Names::CAW => /\bca+w+\b/,
        EmojiConfig::Names::COW => /\bmoo+\b/,
        EmojiConfig::Names::FROG => /\bri+bbi+t\b|\bcro+a+k\b/,
        EmojiConfig::Names::HONK => /\bho+nk\b/,
        EmojiConfig::Names::MOON => /\b((ni){2,}|g'night|good night)\b/,
        EmojiConfig::Names::NYA => /\b(nya+[hn]?|me+ow)\b/,
        EmojiConfig::Names::RAT => /\bsque+a+k\b/,
        EmojiConfig::Names::TRAIN => /\bchoo+\s*choo+\b/,
        EmojiConfig::Names::WOOLOO => /\bwoo+loo+\b/,
        EmojiConfig::Names::LOVE => /\blo+ve+\b/,
        EmojiConfig::Names::HEART => /\bhe+a+rt\b/,
        EmojiConfig::Names::KISS => /\bki+ss+\b/,
        EmojiConfig::Names::DOOT => /\bdoo+t\b/,
        EmojiConfig::Names::GHOST => /\b(gho+st|boo+)\b/,
        EmojiConfig::Names::PUMPKIN => /\bpumpkins?\b/,
        EmojiConfig::Names::RIP => /\bri+p\b/,
        EmojiConfig::Names::SKELETONS => /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/
      }.freeze
    end
  end
end
