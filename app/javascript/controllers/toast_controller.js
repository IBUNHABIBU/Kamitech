import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
    consolejson.log("Connected to toast controller")
    this.hide()
  }

  hide() {
    console.log(this.element)
    this.element.classList.add("hidden");
    console.log(this.element);
  }
}
