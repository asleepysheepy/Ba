import { Global, css as emotionCss } from '@emotion/core'

const emotionCreate = {
  create(styles) {
    return Object.keys(styles).reduce((obj, key) => {
      if (typeof styles[key] === 'object') {
        obj[key] = emotionCss({
          label: key,
          ...styles[key],
        })
      } else {
        obj[key] = emotionCss(`label: ${ key };` + styles[key])
      }

      return obj
    }, {})
  },
}

const StyleSheet = emotionCreate

export { Global, StyleSheet }
