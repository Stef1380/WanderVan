import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    if(this.element.getAttribute("data-disabled-dates")) {
      flatpickr(this.element, {
        dateFormat: "Y-m-d",
        disable: JSON.parse(this.element.getAttribute("data-disabled-dates")),
        minDate: "today"
      })
    } else {
      flatpickr(this.element)
    }
  }
}
