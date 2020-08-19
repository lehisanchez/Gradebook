import ApplicationController from './application_controller'

export default class extends ApplicationController {
  
  static targets = [ "name", "points" ]
  
  create() {
    this.stimulate('Assignment#create', this.nameTarget.value, this.pointsTarget.value, this.data.get('course'))
    this.nameTarget.value   = ""
    this.pointsTarget.value = ""
  }

}
