import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "button" ]

  input(e) {
    const content = e.target.value.trim()

    if (content != ""){
      this.buttonTarget.classList.remove("bin-disable")
      this.buttonTarget.classList.add("btn-primary")

    } else {
      // 關
      this.buttonTarget.classList.remove("btn-primary")
      this.buttonTarget.classList.add("btn-disable")

    }

  }
}
