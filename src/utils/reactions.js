const base = new Map([
  ['arf', { emoji: 'arf:446677431160668161', regex: /\barf+\b/ }],
  ['awoo', { emoji: 'awoo:434500209012375553', regex: /\baw(u+|oo+)\b/ }],
  ['ba', { emoji: '🐑', regex: /\bba+\b/ }],
  ['bear', { emoji: '🐻', regex: /\bbe+a+ry?\b/ }],
  ['caw', { emoji: 'caw:522999846043648010', regex: /\bca+w+\b/ }],
  ['nya', { emoji: 'nya:434511854505558019', regex: /\b(nya+[hn]?|me+ow)\b/ }],
  ['train', { emoji: '🚄', regex: /\bchoo+\s*choo+\b/ }],
]);

const october = new Map([
  ['doot', { emoji: '🎺', regex: /\bdoo+t\b/ }],
  ['ghost', { emoji: 'boo:496023553473380353', regex: /\b(gho+st|boo+)\b/ }],
  ['pumpkin', { emoji: 'pumpkin:496013175276175370', regex: /\bpumpkins?\b/ }],
  ['rip', { emoji: 'rip:496018846042554388', regex: /\bri+p\b/ }],
  ['skeletons', { emoji: '💀', regex: /\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/ }],
]);

module.exports = () => {
  const reactions = base;

  if (new Date().getMonth() === 9) {
    for (const [k, v] of october) {
      reactions.set(k, v);
    }
  }

  return reactions;
};