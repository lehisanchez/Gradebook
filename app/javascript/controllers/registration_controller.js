import ApplicationController from './application_controller'

export default class extends ApplicationController {
  
  create() {
    this.stimulate('Registration#create', this.data.get('student'), this.data.get('course'))
  }
  
  destroy() {
    this.stimulate('Registration#destroy', this.data.get('student'), this.data.get('course'))
  }

}
