import { Controller } from "stimulus"

export default class extends Controller {
    showCorrespondingForm(event) {
        const memberId = event.currentTarget.dataset.id;
        document.querySelectorAll(`.bet-form`).forEach((form) => { form.classList.remove('visible') })
        document.querySelector(`.bet-form[data-id="${memberId}"]`).classList.add('visible')
    }
}