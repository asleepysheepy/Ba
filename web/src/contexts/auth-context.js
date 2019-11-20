import PropTypes from 'prop-types'
import React, { createContext, useState } from 'react'

export const AuthContext = createContext()

export default function AuthContextProvider(props) {
  const [user] = useState({})
  const [token] = useState('')

  return (
    <AuthContext.Provider value={{user, token}}>
      {props.children}
    </AuthContext.Provider>
  )
}

AuthContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
}
