import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="humburger"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log("Humberger", this.element);
    this.toggle();
  }

  toggle() {
    this.element.classList.toggle("open");
    console.log('toggle');
  }
}
