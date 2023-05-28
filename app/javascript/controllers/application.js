import { Application } from "@hotwired/stimulus"
import Menu from './menu_controller'
const application = Application.start()
application.register('menu', Menu)
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
