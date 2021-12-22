// const swiper = new swiper('.swiper','.swiper-slide-image', {
//     speed: 400,
//     slidesPerView: 1,
//     spaceBetween: 10,
//     // Optional parameters
//     direction: 'vertical',
//     loop: false,
  
//     // If we need pagination
//     pagination: {
//       el: '.swiper-pagination',
//     },
  
//     // Navigation arrows
//     navigation: {
//       nextEl: '.swiper-button-next',
//       prevEl: '.swiper-button-prev',
//     },
  
//     // And if we need scrollbar
//     scrollbar: {
//       el: '.swiper-scrollbar',
//     },
//   });
// import Swiper from '/swiper';
// import '/swiper/css';


// new Swiper( '.swiper-slide', {
//     navigation: {
//         nextEl: '.swiper-button-next',
//         prevEl: '.swiper-button-prev',
//     },
//     pagination: {
//        el: '.swiper-pagination',
//     },
// });
let swiper = new Swiper('.swiper', {
    // Optional parameters
    
    loop: true,
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
    // And if we need scrollbar
    scrollbar: {
      el: '.swiper-scrollbar',
      scrollbar: false,
    },
  });
  function myFunction() {
    let x = document.getElementById("myLinks");
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
  }