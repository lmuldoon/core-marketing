import { gsap } from "gsap";
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;
import 'slick-carousel';
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { toggleBurger, toggleFilter, filterProjects } from './functions.js';
gsap.registerPlugin(ScrollTrigger);
document.getElementById('toggleBurger').addEventListener('click', toggleBurger);
document.getElementById('filterBtn').addEventListener('click', toggleFilter);
document.addEventListener('DOMContentLoaded', function() {
    var categoriesList = document.getElementById('categoriesList');
    categoriesList.addEventListener('click', function(event) {
        var target = event.target;
        if (target.tagName === 'A') {
            var category = target.getAttribute('data-category');
            filterProjects(category);
        }
    });
});

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

