import ApplicationController from './application_controller'

export default class extends ApplicationController {
  
  static targets = [ "name" ]
  
  create() {
    this.stimulate('Course#create', this.nameTarget.value, this.data.get('teacher'))
    this.nameTarget.value   = ""
  }

}
