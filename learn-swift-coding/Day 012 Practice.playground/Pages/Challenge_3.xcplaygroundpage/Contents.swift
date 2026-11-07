//: # Lesson 5.1: Arrays
//: ## Challenge 3
//:
//: ### What you practiced in this lesson:
//: - Use `let` for arrays whose contents won't change, `var` for arrays that will
//: - `Array(repeating:count:)` creates an array pre-filled with a repeated starting value
//: - You can use `.count` on one array to drive decisions about another
//:
//: ---
//:
//: ### Your Challenge
//:
//: You're setting up a leaderboard for a 4-player mobile game.
//: Each player starts with a score of 0, and the player names never change after setup.
//:
//: 1. Create a **constant** array called `playerNames` with these four strings:
//:    "Alex", "Jordan", "Sam", "Riley"
//: 2. Create a **variable** array called `scores` using `Array(repeating:count:)`.
//:    It should hold the integer `0` repeated 4 times — one slot per player.
//: 3. Print the number of players using string interpolation:
//:    `Players: 4`
//: 4. Print a welcome message for the first player using their name from the array:
//:    `Welcome, Alex!`
//: 5. Print the starting score for the last player (Riley, at index 3):
//:    `Riley's starting score: 0`
//:
//: **Hint:** For step 2, the syntax is `Array(repeating: someValue, count: howMany)`.
//: The repeated value goes first, the count goes second.
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: Players: 4
//: Welcome, Alex!
//: Riley's starting score: 0
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓
let playerNames = ["Alex", "Jordan", "Sam", "Riley"]
let scores = (0..<4).reduce(
    into: [],
    { (runningArray, _) in runningArray.append(0) }
)
print("Players: \(playerNames.count)")
print("Welcome, \(playerNames.first ?? "None")")
print("\(playerNames.last ?? "None")'s starting score: \(scores.last ?? 0)")
