// Tally Votes in JavaScript Pairing Challenge.
// I worked on this challenge with: Jeff Schneider
// This challenge took me [2.25] hours.
// These are the votes cast by each student. Do not alter these objects here.
var votes = {
"Alex": { president: "Bob",
         vicePresident: "Devin",
         secretary: "Gail",
         treasurer: "Kerry" },


"Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
"Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
"Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
"Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
"Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },

"Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
"Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
"Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
"John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
"Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
"Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
"Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
"Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
"Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
"Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
"Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
"Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
"Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
"Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
"Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
"Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
"Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
"Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
"Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
"Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}




// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
// Pseudocode
// Write a for statement that iterates through votes
// For each object within votes, iterate through their properties
// Fill votecount with key/values from votes.
// Each object within votecount will need to be updated with the vote tallys
// Iterate through votecount to determine the winners.
// Add the winners to the object officers.

//__________________________________________


// Initial Solution
// __________________________________________

// for (var voter in votes){
//   var results = votes[voter]
//     for (var vote in results){
//       var candidate = results[vote];
//       if (voteCount[vote].hasOwnProperty(candidate)) {

//         voteCount[vote][candidate] ++;
//       } else {
//         voteCount[vote][candidate] = 1;
//       };
//     }
// }

// var winner = "";
// for (var official in voteCount) {
//   var max = 0;
//   var votes = voteCount[official];
//   for (var name in votes) {

//     if (votes[name] > max) {
//       max = votes[name];
//       winner = name;
//     }
//     officers[official] = winner;
//   }
// }

// __________________________________________
// Refactored Solution

for (var voter in votes) {
  var results = votes[voter];
  for (var vote in results) {
    var candidate = results[vote];
    if (voteCount[vote].hasOwnProperty(candidate)) {
      voteCount[vote][candidate] ++;
    } else {
      voteCount[vote][candidate] = 1;
    }
  }
}

var winner = "";

for (var official in voteCount) {
  var max = 0;
  var votes = voteCount[official];
  for (var name in votes) {

    if (votes[name] > max) {
      max = votes[name];
      winner = name;
    }
    officers[official] = winner;
  }
}


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// It can be tricky! Loops within loops can give unexpected results.

// Were you able to find useful methods to help you with this?

// Good variable names are essential, or else it's hard to remember what level you are working on and what values you're accessing.
// Also console.log to debug in various levels of the loops totally helped.

// What concepts were solidified in the process of working through this challenge?

// Mostly how to structure for loops to work with objects. Conceptually sometimes it makes sense to create a new variable within the loop for readability.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)