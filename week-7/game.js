 // Design Basic Game Solo Challenge

// This is a solo challenge

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


function Spaceman() {
  this.health = 100;
  this.hasCrystal = false;
  this.escaped = false;
  this.alive = true;

  this.attack = function(enemy) {
    alert("You attack!");
    var hit = Math.floor(Math.random() * 10) + 10;
    enemy.health -= hit;
    if (enemy.health > 0) {
      alert("Scored a hit, but didn't finish it off.");
    } else {
      alert("You defeated the alien!");
      enemy.alive = false;
    };
    return enemy;
  };
};

function Alien(level) {
  this.health = level * Math.floor(Math.random() * 20);
  this.alive = true;

  this.attack = function(enemy) {
    alert("The alien attacks!");
    var hit = Math.floor(Math.random() * 10) + 10;
    enemy.health -= hit;
    if (enemy.health > 0) {
      alert("You took damage! Health = " + enemy.health);
    } else {
      alert("Alas, you have been smote.");
      enemy.alive = false;
      this.alive = false;
    }
    return enemy;
  };
};

function Game() {
  var spaceman = new Spaceman();
  var location = 1;

  this.play = function() {

    alert("You're stranded on the planet Dev!");
    alert("Make your way through the alien defence and steal back your ship's power source!");
    alert("The dilithium crystal is in pod 3 - hurry!");
    alert("Get ready to enter...");

    function enterPod(num) {
      alert("You enter pod " + num + " ...");
      var fightProb = Math.floor(Math.random() * 3) + 1;
      if (fightProb > 1) {
        encounter(fightProb);
      } else {
        alert("Got lucky - no aliens in here...");
      };
    };

    function encounter(level) {
      alert("An alien draws near!");
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
      if (location === 1 || location === 2) {
        enterPod(location);
        if (spaceman.alive === true) {
          alert("Go deeper into the hive, or back out toward ship?");
          var valid = false;
          while (valid === false) {
            var response = prompt("'in' or 'out'?");
            if (response === 'in') {
              location += 1;
              valid = true;
            } else if (response === 'out') {
              location -= 1;
              valid = true;
            } else {
              alert("Didn't get that, try again.");
            };
          };
          if (location === 1 || location === 2) {
            navigate();
          };
        };
      };
    };

    if (location === 3) {
      alert("You enter pod 3 ...");
      encounter(3);
      alert("You've found the dilithium crystal!");
      alert("Head back to the ship!");
      spaceman.hasCrystal = true;
      location -= 1;
      navigate();
    };

    if (location === 0) {
      alert("You've arrived back at the ship.");
      alert("Let's get out of here!");
      powerUp();
    };

    function blastOff() {
      alert("Ship is powered up!");
      var response = prompt("Ready for takeoff? ('y' or 'n')");
      if (response === 'y' || response === 'yes') {
        alert("3...");
        alert("2...");
        alert("1...");
        alert("Ignition!");
        alert("You've escaped!");
        spaceman.escaped = true;
        end();
      } else {
        alert("Oh! Wanna vaporize more aliens, huh?");
        encounter(3);
        blastOff();
      };
    };

    function powerUp() {
      if (spaceman.hasCrystal = false) {
        alert("Ship has no power source!");
        alert("Return to hive and find the crystal.");
      } else {
        alert("Returned dilithium crystal to ship!");
        alert("It'll take a few moments to charge....");
        alert("...watch out!!");
        encounter(3);
        if (spaceman.alive === true) {
          blastOff();
        };
      };
    };

    function end() {
      if (spaceman.alive === false) {
        alert("Thanks for playing!");
        alert("Better luck next zorp!");
      };

      if (spaceman.escaped === true) {
        alert("Congratulations! Thanks for playing!");
      };
    };
  };
}

var game = new Game();
game.play();


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//