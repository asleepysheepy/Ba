import { ThemeContext } from '@src/contexts/theme-context'
import { useContext } from 'react'

export default function useTheme() {
  const { isDarkTheme, toggleTheme } = useContext(ThemeContext)

  return [isDarkTheme, toggleTheme]
}
