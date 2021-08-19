import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['card']

  connect() {
    console.log('Hello, vehicle!')
    // console.log(this.cardTargets)
  }

  display(e) {
    // console.log(e.currentTarget)
    // console.log('display')
    e.currentTarget.firstElementChild.classList.remove('hidden')
  }

  hide(exit) {
    // console.log(exit.currentTarget)
    this.cardTargets.forEach((car) => {
      car.firstElementChild.classList.add('hidden');
    })

  }
}
