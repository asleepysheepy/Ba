const path = require('path')
const withCss = require('@zeit/next-css')

module.exports = withCss({
  webpack: (config) => {
    config.resolve.alias['src'] = path.join(__dirname, 'src')

    return config
  },
})
