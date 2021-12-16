import Darkmode from 'darkmode-js';

function AutoDarkmode() {
  new Darkmode({
    time: '0s',
    mixColor: '#e5e5e5',
  });
  if (Darkmode.isActivated()) {
    document.documentElement.classList.add('darkmode-html')
  }
}

window.addEventListener('load', AutoDarkmode);
