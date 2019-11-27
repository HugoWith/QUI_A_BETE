import { Controller } from "stimulus"

export default class extends Controller {

    static targets = ["inprogress", "classement", "donebet"]

    inprogress() {
        this.inprogressTarget.classList.toggle('visible');
    }

    classement() {
      document.querySelector('.scoreboard').classList.toggle('scoreboard-actived')

    }

    donebet() {
        this.donebetTarget.classList.toggle('visible');
    }

}

