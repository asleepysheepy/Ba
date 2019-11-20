module.exports = function (api) {
  api.cache.never()
  return {
    presets: ['@babel/preset-env', '@babel/preset-react'],
    plugins: [
      ['module-resolver', {
        'alias': {
          '@src': './src',
          '@test': './test',
        },
      }],
    ],
  }
}
