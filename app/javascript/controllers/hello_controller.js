import { Controller } from "stimulus"

export default class extends Controller {

    static targets = ["inprogress", "classement", "donebet", "winner"]

    inprogress() {
        this.inprogressTarget.classList.toggle('visible');
    }

    classement() {
      document.querySelector('.scoreboard').classList.toggle('scoreboard-actived')

    }

    donebet() {
        this.donebetTarget.classList.toggle('visible');
    }

    winner() {
      this.winnerTarget.console.log('hello')
    }

}

