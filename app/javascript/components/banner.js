import Typed from 'typed.js';

const loadDynamicBannerText = () => {

  const banner = document.querySelector('.banner');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["A new way", "to escape !"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
