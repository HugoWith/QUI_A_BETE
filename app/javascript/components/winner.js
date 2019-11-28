
let button = document.querySelector('.winner-btn')
button.disabled=true

const animateWinner = () => {
  const winner = document.querySelector('.winner-selection').querySelector('input:checked + label img')
  const looser = document.querySelector('.winner-selection').querySelector('input:not(:checked) + label img')
  winner.classList.add('winner-selection-active')
  looser.classList.add('looser-selection-active')
  console.log("je lance l'animation du winner")
}

const changePage = () => {
  console.log("je vais changer de page")
}

const activeButtonChoice = () => {
  let button = document.querySelector('.winner-btn')
  button.disabled = false ;

}

const clickButtonChoice = (e) => {
  e.preventDefault();
  animateWinner()
  setTimeout(changePage, 2000)
}




const initWinnerJS = () => {
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




