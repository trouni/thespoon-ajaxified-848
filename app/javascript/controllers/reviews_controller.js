import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ['list'] // You can access the element with this.listTarget

  connect() {
    // console.log('Hello from my reviews controller');
  }

  create(event) {
    event.preventDefault()
    const form = event.target

    fetch(form.action, {
      method: 'POST',
      headers: { Accept: 'application/json', "X-CSRF-Token": csrfToken() },
      body: new FormData(form),
    }).then(response => response.json())
    .then(data => {
      if (data.new_review_html) {
        this.listTarget.insertAdjacentHTML('afterbegin', data.new_review_html)
      }
      form.outerHTML = data.form_html
    })
  }
}
