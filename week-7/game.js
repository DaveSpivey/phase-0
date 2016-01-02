 // Design Basic Game Solo Challenge

// This is a solo challenge

// Note: First version of the game has to be run in the browser because it relies on prompt() and alert()
// this makes it lame.
// Refactored solution runs in node, but no timing separated text display between input prompts.
// this is also lame. Enjoy!

// Your mission description:
// Overall mission: Navigate spaceman through alien lair to find dilithium crystal, then return to ship and escape.
// Goals: Get crystal, return to ship, don't die, escape.
// Characters: Spaceman, aliens
// Objects: Spaceman, Alien, Ship
// Functions: Spaceman and Alien each have #attack functions,
// Ship has powerUp and blastOff functions

// Pseudocode
//  Create Spaceman constructor with properties for health and hasCrystal.
//  Add attack function for Spaceman
//  Attack function should generate a random number within a range to inflict damage and affect alien health property.
//  Create Alien constructor and add an attack funtion mirroring Spaceman attack function.
//  New instances of Alien should generate a difficulty level with a random number.
//  Add properties to both Spaceman and Alien to check if still alive.
//  Create a Ship constructor with property hasCrystal and add a function to powerUp if ship receives the crystal.
//  Design logic for ordering these functions so player can navigate through game.
//

// Initial Code


// function Spaceman() {
//   this.health = 100;
//   this.hasCrystal = false;
//   this.escaped = false;
//   this.alive = true;

//   this.attack = function(enemy) {
//     alert("You attack!");
//     var hit = Math.floor(Math.random() * 10) + 10;
//     enemy.health -= hit;
//     if (enemy.health > 0) {
//       alert("Scored a hit, but didn't finish it off.");
//     } else {
//       alert("You defeated the alien!");
//       enemy.alive = false;
//     };
//     return enemy;
//   };
// };

// function Alien(level) {
//   this.health = level * Math.floor(Math.random() * 20);
//   this.alive = true;

//   this.attack = function(enemy) {
//     alert("The alien attacks!");
//     var hit = Math.floor(Math.random() * 10) + 10;
//     enemy.health -= hit;
//     if (enemy.health > 0) {
//       alert("You took damage! Health = " + enemy.health);
//     } else {
//       alert("Alas, you have been smote.");
//       enemy.alive = false;
//       this.alive = false;
//     }
//     return enemy;
//   };
// };

// function Game() {
//   var spaceman = new Spaceman();
//   var location = 1;

//   this.play = function() {

//     alert("You're stranded on the planet Dev!");
//     alert("Make your way through the alien defence and steal back your ship's power source!");
//     alert("The dilithium crystal is in pod 3 - hurry!");
//     alert("Get ready to enter...");

//     function enterPod(num) {
//       alert("You enter pod " + num + " ...");
//       var fightProb = Math.floor(Math.random() * 3) + 1;
//       if (fightProb > 1) {
//         encounter(fightProb);
//       } else {
//         alert("Got lucky - no aliens in here...");
//       };
//     };

//     function encounter(level) {
//       alert("An alien draws near!");
//       var alien = new Alien(level);

//       while (alien.alive === true) {
//         spaceman.attack(alien);
//         if (alien.alive === true) {
//           alien.attack(spaceman);
//         };
//       };

//       if (spaceman.alive === false) {
//         end();
//       };
//     };

//     navigate();

//     function navigate() {
//       if (location === 1 || location === 2) {
//         enterPod(location);
//         if (spaceman.alive === true) {
//           alert("Go deeper into the hive, or back out toward ship?");
//           var valid = false;
//           while (valid === false) {
//             var response = prompt("'in' or 'out'?");
//             if (response === 'in') {
//               location += 1;
//               valid = true;
//             } else if (response === 'out') {
//               location -= 1;
//               valid = true;
//             } else {
//               alert("Didn't get that, try again.");
//             };
//           };
//           if (location === 1 || location === 2) {
//             navigate();
//           };
//         };
//       };
//     };

//     if (location === 3) {
//       alert("You enter pod 3 ...");
//       encounter(3);
//       alert("You've found the dilithium crystal!");
//       alert("Head back to the ship!");
//       spaceman.hasCrystal = true;
//       location -= 1;
//       navigate();
//     };

//     if (location === 0) {
//       alert("You've arrived back at the ship.");
//       alert("Let's get out of here!");
//       powerUp();
//     };

//     function blastOff() {
//       alert("Ship is powered up!");
//       var response = prompt("Ready for takeoff? ('y' or 'n')");
//       if (response === 'y' || response === 'yes') {
//         alert("3...");
//         alert("2...");
//         alert("1...");
//         alert("Ignition!");
//         alert("You've escaped!");
//         spaceman.escaped = true;
//         end();
//       } else {
//         alert("Oh! Wanna vaporize more aliens, huh?");
//         encounter(3);
//         blastOff();
//       };
//     };

//     function powerUp() {
//       if (spaceman.hasCrystal = false) {
//         alert("Ship has no power source!");
//         alert("Return to hive and find the crystal.");
//       } else {
//         alert("Returned dilithium crystal to ship!");
//         alert("It'll take a few moments to charge....");
//         alert("...watch out!!");
//         encounter(3);
//         if (spaceman.alive === true) {
//           blastOff();
//         };
//       };
//     };

//     function end() {
//       if (spaceman.alive === false) {
//         alert("Thanks for playing!");
//         alert("Better luck next zorp!");
//       };

//       if (spaceman.escaped === true) {
//         alert("Congratulations! Thanks for playing!");
//       };
//     };
//   };
// }

// var game = new Game();
// game.play();


// Refactored Code

var readline = require('readline');


function Spaceman() {
  this.health = 100;
  this.hasCrystal = false;
  this.escaped = false;
  this.alive = true;
  this.location = 1;

  this.attack = function(enemy) {
    console.log("You attack!");
    var hit = Math.floor(Math.random() * 10) + 10;
    enemy.health -= hit;
    if (enemy.health > 0) {
      console.log("Scored a hit, but didn't finish it off.");
    } else {
      console.log("You defeated the alien!");
      enemy.alive = false;
    };
    return enemy;
  };
};

function Alien(level) {
  this.health = level * Math.floor(Math.random() * 20);
  this.alive = true;

  this.attack = function(enemy) {
    console.log("The alien attacks!");
    var hit = Math.floor(Math.random() * 10) + 10;
    enemy.health -= hit;
    if (enemy.health > 0) {
      console.log("You took damage! Health = " + enemy.health);
    } else {
      console.log("Alas, you have been smote.");
      enemy.alive = false;
      this.alive = false;
    }
    return enemy;
  };
};

function Game() {
  var spaceman = new Spaceman();
  // var location = 1;

  this.play = function() {

    console.log("You're stranded on the planet Dev!\n");
    console.log("Make your way through the alien defence and steal back your ship's power source!");
    console.log("The dilithium crystal is in pod 3 - hurry!\n");
    console.log("Get ready to enter...");

    function enterPod(num) {
      console.log("\n\nYou enter pod " + num + " ...");
      var fightProb = Math.floor(Math.random() * 3) + 1;
      if (fightProb > 1) {
        encounter(fightProb);
      } else {
        console.log("Got lucky - no aliens in here...\n");
      };
    };

    function encounter(level) {
      console.log("An alien draws near!\n");
      var alien = new Alien(level);

      while (alien.alive === true) {
        spaceman.attack(alien);
        if (alien.alive === true) {
          alien.attack(spaceman);
        };
      };

      if (spaceman.alive === false) {
        end();
      };
    };

    navigate();

    function navigate() {
      if (spaceman.location === 1 || spaceman.location === 2) {
        enterPod(spaceman.location);
        if (spaceman.alive === true) {
          console.log("Go deeper into the hive, or back out toward ship?");

            var rl = readline.createInterface({ input: process.stdin, output: process.stdout
            });
            rl.question("'in' or 'out'? ", function(answer) {
              if (answer === 'in') {
                spaceman.location += 1;
              } else if (answer === 'out') {
                spaceman.location -= 1;
              } else {
                console.log("Fine stay in this pod then.");
              };
              rl.pause();

              if (spaceman.location === 1 || spaceman.location === 2) {
                navigate();
              } else if (spaceman.location === 3) {
                console.log("\n\nYou enter pod 3 ...");
                encounter(3);
                console.log("\nYou've found the dilithium crystal!");
                console.log("Head back to the ship!");
                spaceman.hasCrystal = true;
                spaceman.location -= 1;
                navigate();
              } else if (spaceman.location === 0) {
                console.log("\n\nYou've arrived back at the ship.");
                console.log("Let's get out of here!");
                powerUp();
              };
              rl.close();
            });
        };
      };
    };

    function blastOff() {
      var rl = readline.createInterface({ input: process.stdin, output: process.stdout
      });
      console.log("Ship is powered up!");
      rl.question("Ready for takeoff? ('y' or 'n') ", function(answer) {
        rl.pause();
        if (answer === 'y' || answer === 'yes') {
          console.log("3...");
          console.log("2...");
          console.log("1...");
          console.log("Ignition!");
          console.log("You've escaped!");
          spaceman.escaped = true;
          end();
        } else {
          console.log("\nOh! Wanna vaporize more aliens, huh?");
          encounter(3);
          blastOff();
        };
        rl.close();
      });
    };

    function powerUp() {
      if (spaceman.hasCrystal === false) {
        console.log("Ship has no power source!");
        console.log("Return to hive and find the crystal.");
        spaceman.location += 1;
        navigate();
      } else {
        console.log("Returned dilithium crystal to ship!");
        console.log("It'll take a few moments to charge....");
        console.log("\n...watch out!!");
        encounter(3);
        if (spaceman.alive === true) {
          blastOff();
        };
      };
    };

    function end() {
      if (spaceman.alive === false) {
        console.log("Thanks for playing!");
        console.log("Better luck next zorp!");
      };

      if (spaceman.escaped === true) {
        console.log("Congratulations! Thanks for playing!");
      };
    };
  };
}

var game = new Game();
game.play();




// Reflection
//
// What was the most difficult part of this challenge?

// Figuring out the overall structure was difficult but manageable.
// The worst part was figuring out how to make the game work in the command line.

// What did you learn about creating objects and functions that interact with one another?

// Structure and logic is important. There were lots of opportunities for
// conflicts, edge cases left out or infinite loops.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// Learned out to use readline(), which seems to be way more complicated than necessary.
// Had to change large chunks of how the logic was structured just for this.
// How about #gets.chomp? Man.
// But through this I learned about the brutally inescapable flow of time in node.
// The program stops for nothing - and I wasn't able to implement anything like a #sleep() function.

// How can you access and manipulate properties of objects?
//
// I mostly used dot notation, which was easy. spaceman.health and alien.health changed most often
// and was just handled like any other variable.