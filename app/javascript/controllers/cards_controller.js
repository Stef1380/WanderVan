import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["van"]

  connect() {
    // console.log('Category controller connected');
  }

  filter(event) {

    const type = event.target.id
    const vans = this.vanTargets
    vans.forEach(van => {
      van.classList.remove('d-none')
      console.log(van.id)
      console.log(type)
      if (van.id !== type) {
        van.classList.add('d-none')
      }
    });
  }
}
