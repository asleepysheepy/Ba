module.exports = function (api) {
  api.cache.never()
  return {
    presets: ['@babel/preset-env', '@babel/preset-react', '@emotion/babel-preset-css-prop'],
    plugins: [
      '@babel/plugin-proposal-class-properties',
      ['module-resolver', {
        'alias': {
          '@src': './src',
          '@test': './test',
        },
      }],
    ],
  }
}
