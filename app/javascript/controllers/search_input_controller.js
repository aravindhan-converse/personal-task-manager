import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-input"
export default class extends Controller {
  static targets = ["search_input"];
  connect() {
    console.log("testsssssssssssssss");
    
  }

  handleChange() {
    const inputValue = $(this.search_inputTarget).value();

    console.log("Input value changed:", inputValue);
  }
}
