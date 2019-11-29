import React from 'react'
import baIcon from '@src/assets/ba-icon.png'
import useTheme from '@src/hooks/use-theme'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { Link } from 'react-router-dom'
import { StyleSheet } from '@src/utils/styles'
import { faBars } from '@fortawesome/free-solid-svg-icons'

const buildStyleSheet = (isDarkTheme) => StyleSheet.create({
  navbar: {
    alignItems: 'center',
    display: 'flex',
    marginTop: '1.5rem',
    width: '100%',
    '@media (min-width: 950px)': {
      justifyContent: 'center',
    },
  },
  navList: {
    alignItems: 'baseline',
    display: 'flex',
    listStyle: 'none',
    padding: 0,
  },
  image: {
    width: '3rem',
  },
  navLink: {
    display: 'none',
    '@media (min-width: 950px)': {
      color: isDarkTheme ? '#FFFFFF' : '#32363B',
      display: 'inherit',
      margin: '0.5rem',
      textDecoration: 'none',
      textTransform: 'uppercase',
      '&:hover': {
        color: '#7289DA',
      },
    }
  },
  title: {
    color: isDarkTheme ? '#FFFFFF' : '#32363B',
    fontSize: '2rem',
    fontWeight: 'bold',
    margin: '0.5rem',
    textDecoration: 'none',
    textTransform: 'uppercase',
    '&:hover': {
      color: '#7289DA',
    },
  },
  hamburgerIcon: {
    backgroundColor: 'transparent',
    border: 'none',
    color: isDarkTheme ? '#FFFFFF' : '#32363B',
    fontSize: '1.5rem',
    margin: '1.5rem',
    padding: 0,
    textDecoration: 'none',
    textTransform: 'uppercase',
    '&:hover': {
      color: '#7289DA',
    },
    '@media (min-width: 950px)': {
      display: 'none',
    }
  },
})

export default function Navbar() {
  const [isDarkTheme] = useTheme()
  const styles = buildStyleSheet(isDarkTheme)

  return (
    <nav css={styles.navbar}>
      <button css={styles.hamburgerIcon} onClick={() => {console.log('pressed')}}><FontAwesomeIcon icon={faBars} /></button>
      <Link to={'/'}>
        <img
          alt={'Ba avatar'}
          css={styles.image}
          src={baIcon}
        />
        </Link>
      <ul css={styles.navList}>
        <li><Link css={styles.title} to={'/'}>Ba</Link></li>
        <li><a css={styles.navLink} href={'https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=2112'}>Add ba to your sever</a></li>
        <li><a css={styles.navLink} href={'https://discord.gg/FDndu3p'}>Join the dev server</a></li>
        <li><a css={styles.navLink} href={'https://github.com/flutterflies/ba'}>Fork me on Github</a></li>
        <li><a css={styles.navLink} href={'https://www.ko-fi.com/a_sleepy_sheepy'}>Support me on ko-fi</a></li>
      </ul>
    </nav>
  )
}
