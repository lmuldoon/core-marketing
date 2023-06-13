export {toggleBurger,toggleFilter,filterProjects}

/*****TOGGLE BURGER******/
function toggleBurger() {
  document.getElementById('toggleBurger').classList.toggle("open");
  document.getElementById("toggleMenu").classList.toggle("Open");
  document.querySelector('body').classList.toggle("navOpen");
}

var elements = document.querySelectorAll("#toggleMenu a");

for (var i = 0; i < elements.length; i++) {
  elements[i].addEventListener('click', toggleBurger, false);
}
/*****TOGGLE FILTER******/
function toggleFilter() {
  document.getElementById('filter').classList.toggle("open");
}


var filterElements = document.querySelectorAll("#filter a");
for (var i = 0; i < filterElements.length; i++) {
  filterElements[i].addEventListener('click', toggleFilter, false);
}
/*****FILTER PROJECTS******/
function filterProjects(category) {
    category = category.toLowerCase();
    var postItems = document.getElementsByClassName('workInner');
    for (var i = 0; i < postItems.length; i++) {
      var postItem = postItems[i];
      var postCategory = postItem.getAttribute('data-category');
      if (postCategory === category || category === 'all') {
        postItem.parentElement.style.display = 'flex';
        postItem.parentElement.classList.remove('fadeUp');
      } else {
        postItem.parentElement.style.display = 'none';
        if(!postItem.parentElement.classList.contains('fadeUp')) {
            postItem.parentElement.classList.add('fadeUp');
        }
      }
    }
  }