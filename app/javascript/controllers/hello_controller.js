import { Controller } from "stimulus"

export default class extends Controller {

    static targets = ["inprogress", "element", "donebet"]

    inprogress() {
        this.inprogressTarget.classList.toggle('visible');
    }

    classement() {
        this.elementTarget.classList.toggle('visible');
    }

    donebet() {
        this.donebetTarget.classList.toggle('visible');
    }

}