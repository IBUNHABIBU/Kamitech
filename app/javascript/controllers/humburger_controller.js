import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="humburger"
export default class extends Controller {
  static targets = [".btn-mobile-nav", "header__menu__item"]
  connect() {
    this.toggle();
    this.removenav();
  }

  toggle() {
    this.element.classList.toggle("nav-open");
    console.log(this.element);
  }

  removenav() {
    this.element.classList.toggle("nav-open");
    console.log("remove", this.element)
  }
}
