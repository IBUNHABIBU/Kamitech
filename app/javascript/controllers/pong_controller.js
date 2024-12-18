import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pong"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    this.toggle();
  }

  toggle() {
    this.element.classList.toggle("open");
  }
}
