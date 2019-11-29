import React from 'react'
import useTheme from '@src/hooks/use-theme'
import { StyleSheet } from '@src/utils/styles'

const buildStyleSheet = (isDarkTheme) => StyleSheet.create({
  footer: {
    alignItems: 'center',
    backgroundColor: isDarkTheme ? '#18191D' : '#E3E5E8',
    display: 'flex',
    flexDirection: 'column',
    flexShrink: 0,
    margin: 0,
    minWidth: '100%',
    padding: '0.5rem',
  },
  footerText: {
    color: '#73767C',
    fontSize: '0.75rem',
    margin: '0.125rem',
    textAlign: 'center',
  },
  footerTextLink: {
    color: '#73767C',
    textDecoration: 'underline',
  },
})

export default function Footer() {
  const [isDarkTheme] = useTheme()
  const styles = buildStyleSheet(isDarkTheme)

  return (
    <footer css={styles.footer}>
      <p css={styles.footerText}>&copy; 2019 a_sleepy_sheepy</p>
      <p css={styles.footerText}>Ba is made with ❤️ and ☕️</p>
      <p css={styles.footerText}>
        {'Licensed under an '}
        <a
          css={styles.footerTextLink}
          href={'https://sleepysheepy.net/#/license'}
        >
          MIT License
        </a>
      </p>
    </footer>
  )
}
