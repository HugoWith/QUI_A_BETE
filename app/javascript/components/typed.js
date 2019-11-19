import Typed from 'typed.js';

const initTypedJS = () => {
  const span = document.querySelector('#banner-typed-text');

  if (span) {
    new Typed('#banner-typed-text', {
      strings: ['Les paris, entre potes !^1000'],
      typeSpeed: 70,
      loop: true
    });
  }
}

export { initTypedJS };
