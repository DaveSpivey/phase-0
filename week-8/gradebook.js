/*
Gradebook from Names and Scores
I worked on this challenge [with: Roche Janken]
This challenge took me [2] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// for(var i = 0; i < students.length; i++) {
//   gradebook[(students[i])] = {};
// }

// students.forEach(function(student, idx) {
//   gradebook[student].testScores = scores[idx];
// });

// gradebook.addScore = function addScore(name, score) {
//   gradebook[name].testScores.push(score)
// };


// gradebook.getAverage = function getAverage(name){
//   return average(gradebook[name].testScores)
// };

// var average =function (array){
//   var sum = array.reduce(function (sum, num){ return sum+num});
//   return sum/array.length;
// }

// console.log(gradebook.getAverage("Joseph"));

// __________________________________________
// Refactored Solution

var gradebook = {};

students.forEach(function(student, idx) {
  gradebook[student] = {};
});

students.forEach(function(student, idx) {
  gradebook[student].testScores = scores[idx];
});

gradebook.addScore = function addScore(name, score) {
  gradebook[name].testScores.push(score)
};

gradebook.getAverage = function getAverage(name) {
  return average(gradebook[name].testScores)
};

var average = function (array) {
  return array.reduce(function (sum, num){ return sum+num}) / array.length;
};


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// Dot notation vs. bracket notation === very tricky! Had to use a combo of these to get it to work.
// Learned dot is for pre-defined variables, or defining something in a prototype.
// Bracket expects a string or coerces into a string if possible.

// How did you iterate over nested arrays in JavaScript?

// Same as Ruby, unless accessing within an object, in which case the above rules apply.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We used reduce(), which works just like #inject in Ruby. Just a lot more to tack on syntax-wise,
// and have to remember nothing is returned implicitly, even loop returns within iterator functions.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)