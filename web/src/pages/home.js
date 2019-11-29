import React from 'react'
import useTheme from '@src/hooks/use-theme'
import { StyleSheet } from '@src/utils/styles'

const buildStyleSheet = () => StyleSheet.create({
  container: {
    display: 'flex',
    flex: 1,
    justifyContent: 'center',
    margin: '.5rem 1rem',
    maxWidth: '30rem',
    position: 'relative',
    width: '100%',
  },
})

export default function Home() {
  const [isDarkTheme, toggleTheme] = useTheme()
  const styles = buildStyleSheet(isDarkTheme)

  return (
    <main css={styles.container} />
  )
}
