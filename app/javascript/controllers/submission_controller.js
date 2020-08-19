import ApplicationController from './application_controller'

export default class extends ApplicationController {
  
  create() {
    this.stimulate('Submission#create', this.data.get('assignment'), this.data.get('student'), this.data.get('points'))
  }
  
}
