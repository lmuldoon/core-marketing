import { gsap } from "gsap";
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;
import 'slick-carousel';
import { ScrollTrigger } from "gsap/ScrollTrigger";
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

function toggleBurger() {
  document.getElementById('toggleBurger').classList.toggle("open");
  document.getElementById("toggleMenu").classList.toggle("Open");
  document.querySelector('body').classList.toggle("navOpen");
}

var elements = document.querySelectorAll("#toggleMenu a");

for (var i = 0; i < elements.length; i++) {
  elements[i].addEventListener('click', toggleBurger, false);
}

function toggleFilter() {
  document.getElementById('filter').classList.toggle("open");
}

var filterElements = document.querySelectorAll("#filter a");
for (var i = 0; i < filterElements.length; i++) {
  filterElements[i].addEventListener('click', toggleFilter, false);
}

function filterProjects(category) {
  category = category.toLowerCase();
  var postItems = document.getElementsByClassName('workInner');
  for (var i = 0; i < postItems.length; i++) {
    var postItem = postItems[i];
    var postCategory = postItem.getAttribute('data-category');
    if (postCategory === category || category === 'all') {
      postItem.parentElement.style.display = 'flex';
    } else {
      postItem.parentElement.style.display = 'none';
    }
  }
}

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

