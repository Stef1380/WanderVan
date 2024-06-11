import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

<<<<<<< bookingsController
// Connects to data-controller="datepicker"

=======
>>>>>>> master
export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }
}
