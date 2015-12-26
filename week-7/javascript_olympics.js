 // JavaScript Olympics

// I paired [with: Ray Curran] on this challenge.

// This challenge took me [#] hours.


// Warm Up

// Bulk Up

// var michael = {
//   name: "Michael",
//   event: "motocross"
// };

// var jessica = {
//   name: "Jessica",
//   event: "pentathlon",
// };

// var athlete_list = [michael, jessica];

// function athlete_win(list) {
//   list.forEach(function(athlete) {
//     athlete.win = console.log(athlete.name + " won the " + athlete.event);
//   });
// }

// athlete_win(athlete_list);

// michael.win;

////////tried it with constructor notation - more succinct and useful, but no accepting athlete names from array:

// function Athlete(name, event) {
//   this.name = name;
//   this.event = event;
// }

// var michael = new Athlete("Michael", "motocross");
// var jessica = new Athlete("Jessica", "pentathlon");

// Athlete.prototype.win = function() {
//   console.log(this.name + " won the " + this.event + "!");
// }

// jessica.win();


////// Jumble your words

// function jumble(string) {
//   return string.split("").reverse().join("");
// }

// console.log(jumble("This is a string"));


////// 2,4,6,8

// function getEvens(nums) {
//   return nums.filter(function(x) { return x % 2 === 0; });
// }

// console.log(getEvens([8,5,3,6,3,2,5,8]));


////// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Got a better handle on objects and how they differ from Ruby classes. Also learned a few new built-in functions.

// What are constructor functions?

// Very similar to Ruby classes - these instantiate a set of variables and functions for an object.

// How are constructors different from Ruby classes (in your research)?

// To start, Ruby classes are treated as objects, and require a separate method definition 'initialize' to instantiate initial values for a new instance of the class.
// Constructors are functions that must begin with the instantiation.
// Also JS uses 'this.variable' as opposed to '@variable' syntax, but both are for instances of the function or class.
// Other wise they're very similar -- like Ruby classes, they aren't themselves objects with these parameters.
// A new instance of the object must be created for it to use methods or for variables to have meaning.