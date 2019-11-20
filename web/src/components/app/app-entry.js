import AuthContextProvider from '@src/contexts/auth-context'
import ErrorBoundary from '@src/components/app/error-boundary'
import React from 'react'
import Routes from '@src/routes/routes'
import { BrowserRouter as Router } from 'react-router-dom'

export default function AppEntry() {
  return (
    <ErrorBoundary>
      <Router>
        <AuthContextProvider>
          <Routes />
        </AuthContextProvider>
      </Router>
    </ErrorBoundary>
  )
}
