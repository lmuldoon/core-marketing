gsap.registerPlugin(ScrollTrigger);

jQuery(document).ready(function () {
  jQuery('#services .carousel').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    appendArrows: '#servicesNav',
    responsive: [
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1
        }
      }
    ]
  });

});


/****GSAP ANIMATIONS****/

const scaleHero = gsap.utils.toArray('.heroText');
scaleHero.forEach(scaleH => {
  gsap.to(scaleH, { 
    scale: 1, 
    opacity:1, 
    transformOrigin: "bottom left", 
    duration: 1,
    scrollTrigger: {
      trigger: scaleH
    }
  })
});

const fadeUp = gsap.utils.toArray('.fadeUp');
fadeUp.forEach(up => {
  gsap.to(up, { 
    y: 0,
    opacity:1,
    duration: 0.5,
    scrollTrigger: {
      trigger: up
    }
  })
});

const lefttoright = gsap.utils.toArray('.left');
lefttoright.forEach(left => {
  gsap.to(left, { 
    x: 0,
    opacity:1,
    duration: 0.5,
    scrollTrigger: {
      trigger: left
    }
  })
});

const headerScale = gsap.utils.toArray('.headerScale');
headerScale.forEach(scale => {
  gsap.to(scale, { 
    x:0,
    opacity:1,
    scale:1,
    duration: 0.5,
    scrollTrigger: {
      trigger: scale
    }
  })
});

