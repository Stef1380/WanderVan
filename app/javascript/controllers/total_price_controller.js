import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "total_price", "start_date", "end_date"]
  connect() {
    const start = new Date(this.start_dateTarget.value);
    const end = new Date(this.end_dateTarget.value);
    console.log(typeof start);
    const div_price = this.total_priceTarget
    const total = ((end - start)/1000/3600/24) + 1;
    const price_van = div_price.getAttribute("price");
    const price_final = total * price_van;
      if (price_final > 0) {
        div_price.innerHTML = "votre reservation s'élève a  " + price_final + "€"
      } else {
        div_price.innerHTML = "veuillez sélectionner vos dates"
      }
  }
}
