import { Controller } from "stimulus"

export default class extends Controller {

    static targets = ["inprogress", "classement", "donebet"]

    inprogress() {
        this.inprogressTarget.classList.toggle('visible');
    }

    classement() {
        this.classementTarget.classList.toggle('visible');
    }

    donebet() {
        this.donebetTarget.classList.toggle('visible');
    }

}
