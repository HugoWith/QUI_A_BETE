import { Controller } from "stimulus"

export default class extends Controller {

    static targets = ["output", "element", "donebet"]

    say_hello() {
        this.outputTarget.textContent = 'hello world'
    }

    classement() {
        this.elementTarget.classList.toggle('visible');
    }

    donebet() {
        this.donebetTarget.classList.toggle('visible');
    }

}