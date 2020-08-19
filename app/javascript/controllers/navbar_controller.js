import ApplicationController from './application_controller'

export default class extends ApplicationController {
  
  static targets = [ "profile", "icon1", "icon2", "menu" ]
  
  toggle() {
    this.profileTarget.classList.toggle("hidden")
  }
  
  menu() {
    this.menuTarget.classList.toggle("hidden")
    this.icon1Target.classList.toggle("hidden")
    this.icon2Target.classList.toggle("hidden")
  }

}
