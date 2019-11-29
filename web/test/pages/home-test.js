import Home from '@src/pages/home'
import React from 'react'
import ThemeContextProvider from '@src/contexts/theme-context'
import { render } from '@testing-library/react'

describe('<home />', () => {
  it('renders', () => {
    const wrapper = ({ children }) => <ThemeContextProvider>{children}</ThemeContextProvider>

    const { getByText } = render(<Home />, { wrapper })
    const linkElement = getByText(/Ba/i)
    expect(linkElement).toBeInTheDocument()
  })
})
