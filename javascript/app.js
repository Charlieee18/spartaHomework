var quit;
var moves = ["r", "p", "s"]
while(quit != "yes"){
  var playerScore = 0;
  var computerScore = 0;
  while (playerScore < 3 && computerScore < 3){
// The player move is gathered and stored in a variable
    // Prompt
    var playerMove = prompt('(r)ock, (p)aper or (s)cissors?');
// The app generates a random computer move
  // Math.random, Math.floor 
    var computerMoveIndex = Math.floor((Math.random() * 3));
    console.log(computerMoveIndex); 
// The computer move is stored in a variable
   // var computerMove = null;
   //  if(computerMoveIndex == 0) {
   //  computerMove = "r";
    var computerMove = moves[computerMoveIndex];
   // } 
   //  else if (computerMoveIndex == 1) {
   //  computerMove = "p";
   //  }
   //  else {
   //  computerMove = "s";

   //  }
   //  console.log(computerMove);
// Compare moves and see who has won, or if it's a draw
  // If the moves are the same, it's a draw
  // Rock beats scissors
  // Scissors beat paper
  // Paper beats rock
    var result = null;
    if (computerMove === playerMove){
      result = "draw";
    } else if (playerMove === "r" && computerMove === "s"){
      result = "player wins";
      playerScore ++;
    } else if (playerMove === "s" && computerMove === "p"){
      result = "player wins";
      playerScore ++;
    } else if (playerMove === "p" && computerMove === "r"){
      result = "player wins";
      playerScore ++;
    } else if (playerMove === "s" && computerMove === "r"){
      result = "computer wins";
      computerScore ++;
    } else if (playerMove === "p" && computerMove === "s"){
      result = "computer wins";
      computerScore ++;
    } else if (playerMove === "r" && computerMove === "p"){
      result = "computer wins";
      computerScore ++;
    }
  // Tell the user the outcome of the game
      // Alert
    alert(playerMove);
    alert(computerMove);
    alert(result);

    if (playerScore === 3) {
      alert("Player Wins");
    }
    else if (computerScore === 3) {
      alert("Computer Wins");
    }

  }
  quit = prompt("Do you want to quit?");
  }
// BONUS
    // Update the scores for computer and player

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game