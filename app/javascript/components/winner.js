
let button = document.querySelector('.winner-btn')

const animateWinner = () => {
  const winner = document.querySelector('.winner-selection').querySelector('input:checked + label img')
  const looser = document.querySelector('.winner-selection').querySelector('input:not(:checked) + label img')
  const textWinner = document.querySelector('.winner-text')
  winner.classList.add('winner-selection-active')
  looser.classList.add('animated', 'bounceOutDown', 'slower', 'looser-selection-active')
  textWinner.classList.remove('winner-text')
  textWinner.classList.add('animated', 'fadeInDown', 'slower')
  console.log("je lance l'animation du winner")
}

const submitForm = () => {
  console.log("je vais soumettre le formulaire")
  document.querySelector('.edit_bet').submit()
}

const activeButtonChoice = () => {
  let button = document.querySelector('.winner-btn')
  button.disabled = false ;

}

const clickButtonChoice = (e) => {
  console.log("je suis dans clickButtonChoice")
  e.preventDefault();

  animateWinner()
  setTimeout(submitForm, 5000)
}

const initWinnerJS = () => {
  console.log("je sus la")
  console.log(button)
  if (button == null)
    return

  button.disabled=true
  document.querySelector('.winner-selection').addEventListener('click', activeButtonChoice);
  document.querySelector('.winner-btn').addEventListener('click', clickButtonChoice);
}








// console.log(avatars);

//   if (avatars) {
//     avatars.addEventListener('click', (event) => {

//     });
//     avatars.forEach((avatar) => {
//       avatar.addEventListener('click', (event) => {
//          event.currentTarget.classList.toggle('winner')
//       });



//   //

//   //   document.querySelector('.winner-btn').addEventListener('click')
//   //   document.querySelector('.winner')
//   //   addClasslist('.winner-actived')

//   // }
// });
// }

export { initWinnerJS };




