// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: Integer
// Output: Integers separated by commas as a string

// Create a function that accepts an integer as an argument
 // Convert to a string
// Reverse the numbers
// Then put each character in an array
// Join with commas
//   output result



// Initial Solution
// function separateComma(number) {
//   var numArray = number.toString().split('').reverse();
//   var newArray = []
//   for (var i = 0; i < numArray.length; i++) {
//     if (i % 3 === 0 && i != 0) {
//       newArray.push(",");
//     }
//     newArray.push(numArray[i]);
//   }
//   return newArray.reverse().join('');
// }
// console.log(separateComma(12345673213123123189));



// Refactored Solution
function separateComma(number) {
  var numArray = number.toString().split('').reverse();
  var newArray = numArray.map(function (value, i) {
    if (i % 3 === 0 && i != 0) {
      return value + ",";
    }
    return value;
  });
  return newArray.reverse().join('');
}

console.log(separateComma(12345626261202));
// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Neither of us knew many built-in JS functions so we started with a basic indexing for loop
// Other than that it was a similar first approach to the Ruby challenge.

// What did you learn about iterating over arrays in JavaScript?

// Very similar to Ruby. Had some problems figuring out how to access index number within a loop,
// since there is no explicit "with_index" function, but eventually figured out
// you can enter an optional index parameter with most of the iterative functions.

// What was different about solving this problem in JavaScript?

// In Ruby, I was able to refactor to where all the manipulation was done in-place on the string
// without having to convert it to an array. We had to use arrays in JS and were unable to find
// a method to do all the work in-place without creating a new variable.

// What built-in methods did you find to incorporate in your refactored solution?

// First we used forEach(), but then further refactored to map().