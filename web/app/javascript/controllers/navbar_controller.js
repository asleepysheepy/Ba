import { Controller } from 'stimulus'

export default class NavbarController extends Controller {
  static targets = ['nav']

  toggleNav(event) {
    event.preventDefault();

    this.navTarget.classList.toggle('nav-toggle')
    console.log(this.navTarget)
  }
}
