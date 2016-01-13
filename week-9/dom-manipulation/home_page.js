// DOM Manipulation Challenge


// I worked on this challenge [with: Lucas Nagle].


// Add your JavaScript calls to this page:

// Release 0:
var relZero = document.getElementById("release-0");
relZero.className = "done";

// Release 1:
var relOne = document.getElementById("release-1");
relOne.style.display = "none";


// Release 2:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var relFour = document.getElementById("release-3");
relFour.getElementsByClassName("release-4")[0].style.fontSize = "2em";



// Release 5:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection

// What did you learn about the DOM?

// The DOM is full of objects that JavaScript can manipulate. It's like accessing elements with CSS, just with a new syntax.
// It's tricky and feels more strict, but I'm sure after getting used to it DOM selection will feel very precise.

// What are some useful methods to use to manipulate the DOM?

// Creating a variable that represents a specific element is helpful for convenience and readability.
// Also I like how familiar indexing through a result set of elements is when accessing by tagName or className.
// They act like arrays even if they technically aren't.