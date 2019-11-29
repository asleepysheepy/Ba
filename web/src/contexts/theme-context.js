import PropTypes from 'prop-types'
import React, { createContext, useState } from 'react'

export const ThemeContext = createContext()

export default function ThemeContextProvider({ children }) {
  const wasDarkTheme = JSON.parse(localStorage.getItem('isDarkTheme'))
  const [isDarkTheme, setIsDarkTheme] = useState(wasDarkTheme === null ? true : wasDarkTheme)
  const toggleTheme = () => {
    localStorage.setItem('isDarkTheme', !isDarkTheme)
    setIsDarkTheme(!isDarkTheme)
  }

  return (
    <ThemeContext.Provider value={{isDarkTheme, toggleTheme}}>
      {children}
    </ThemeContext.Provider>
  )
}

ThemeContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
}
