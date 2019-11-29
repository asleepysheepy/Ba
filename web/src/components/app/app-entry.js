import AuthContextProvider from '@src/contexts/auth-context'
import ErrorBoundary from '@src/components/app/error-boundary'
import Footer from '@src/components/layout/footer'
import GlobalStyles from '@src/components/layout/global-styles'
import Navbar from '@src/components/layout/navbar'
import React from 'react'
import Routes from '@src/routes/routes'
import ThemeContextProvider from '@src/contexts/theme-context'
import { BrowserRouter as Router } from 'react-router-dom'

export default function AppEntry() {
  return (
    <ErrorBoundary>
      <Router>
        <AuthContextProvider>
          <ThemeContextProvider>
            <GlobalStyles />
            <Navbar />
            <Routes />
            <Footer />
          </ThemeContextProvider>
        </AuthContextProvider>
      </Router>
    </ErrorBoundary>
  )
}
