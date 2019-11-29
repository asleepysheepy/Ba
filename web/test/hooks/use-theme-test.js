import React from 'react'
import ThemeContextProvider from '@src/contexts/theme-context'
import useTheme from '@src/hooks/use-theme'
import { act, renderHook } from '@testing-library/react-hooks'

describe('useTheme', () => {
  describe('updating the theme', () => {
    it('returns true', () => {
      const wrapper = ({ children }) => <ThemeContextProvider>{children}</ThemeContextProvider>
      const { result } = renderHook(() => useTheme(), { wrapper })

      expect(result.current[0]).toBe(true)

      act(() => {
        result.current[1](false)
      })

      expect(result.current[0]).toBe(false)
    })
  })
})
