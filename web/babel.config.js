module.exports = function (api) {
  api.cache.never()
  return {
    presets: ['next/babel', '@emotion/babel-preset-css-prop'],
    plugins: [],
  }
}
