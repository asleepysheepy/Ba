import PropTypes from 'prop-types'
import React from 'react'
import useAuth from '@src/hooks/use-auth'
import { Redirect, Route } from 'react-router-dom'

export default function ProtectedRoute({ component: Component, ...restProps}) {
  const [isAuthenticated] = useAuth()

  return (
    <Route
      {...restProps}
      render={(renderProps) =>
        isAuthenticated ?
          <Component {...renderProps} /> :
          <Redirect to={'/login'} />
      }
    />
  )
}

ProtectedRoute.propTypes = {
  component: PropTypes.any.isRequired,
}
