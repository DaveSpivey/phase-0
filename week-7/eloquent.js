
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var salmon = "marinated";
// salmon += " and grilled";
// console.log(salmon);

// prompt("What's your favorite food?");
// console.log("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle:
// for (var i = 0; i < 7; i++) {
//   var line = "";
//   for (var j = 0; j <= i; j++) {
//     line += "#";
//   }
//     console.log(line);
// }

// Functions

// Complete the `minimum` exercise.

// function min(num1, num2) {
//   if (num1 < num2)
//     return num1;
//   // else if num1 > num2 {
//   //   return num2;
//   // }
//   else
//     return num2
// }
//else works above because either way you want to return a value. In the case the two values are the same, just return that value.
//console.log(min(3,5));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Dave",
  age: 33,
  favFoods: ["tacos", "prik king", "sushi"],
  quirk: "I pronounce 'apricot' starting with long 'a' and short 'a' equally often, because I just can't decide."
};

console.log(me);