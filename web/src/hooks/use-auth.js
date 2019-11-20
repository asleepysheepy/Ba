import { AuthContext } from '@src/contexts/auth-context'
import { useContext } from 'react'

export default function useAuth() {
  const auth = useContext(AuthContext)
  const isAuthenticated = !! auth.token

  return [
    isAuthenticated,
    auth.token,
    auth.user,
  ]
}
