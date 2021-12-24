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
    var x = document.querySelector(".myLinksBurger");
    if (x.style.display === "flex") {
      x.style.display = null;
    } else {
      x.style.display = "flex";
    }
    
  }
