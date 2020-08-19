import { Controller } from 'stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {
  
  connect () {
    StimulusReflex.register(this)
  }

  beforeReflex (element, reflex) {

  }

  reflexSuccess (element, reflex, error) {

  }

  reflexError (element, reflex, error) {

  }

  afterReflex (element, reflex) {

  }
}
