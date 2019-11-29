import React from 'react'
import useTheme from '@src/hooks/use-theme'
import { Global, StyleSheet } from '@src/utils/styles'

const buildStyleSheet = (isDarkTheme) => StyleSheet.create({
  html: {
    height: '100%',
    width: '100%',
  },
  body: {
    backgroundColor: isDarkTheme ? '#292B2F' : '#F0F1F3',
    color: isDarkTheme ? '#FFFFFF' : '#32363B',
    display: 'flex',
    fontFamily: 'Raleway',
    height: '100%',
    justifyContent: 'center',
    margin: 0,
    width: '100%',
  },
  '#app': {
    alignItems: 'center',
    display: 'flex',
    flexDirection: 'column',
    minHeight: '100vh',
    minWidth: '100vw',
  },
})

export default function GlobalStyles() {
  const [isDarkTheme] = useTheme()
  const styles = buildStyleSheet(isDarkTheme)

  return <Global styles={styles} />
}
