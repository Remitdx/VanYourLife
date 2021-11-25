import Typed from 'typed.js';

const loadDynamicBannerText = () => {

  const banner = document.querySelector('.banner');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Everyone deserve freedom", "A new way to escape !"],
      typeSpeed: 30,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
