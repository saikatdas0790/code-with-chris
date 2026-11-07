//: # Lesson 5.1: Arrays
//: ## Solution 3
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 3 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Setup

// let is the right choice here because the player roster is fixed after setup.
// If you used var, Swift would allow you to accidentally add or remove players later —
// using let makes that impossible and communicates intent: this list doesn't change.
let playerNames = ["Alex", "Jordan", "Sam", "Riley"]

// MARK: - Scores

// Array(repeating:count:) creates [0, 0, 0, 0] in one line.
// The alternative — typing [0, 0, 0, 0] manually — works but doesn't scale:
// if you had 50 players, you'd never type 50 zeros by hand.
// var is required here because scores will change as the game is played.
var scores = Array(repeating: 0, count: 4)

// MARK: - Output

// playerNames.count returns 4, which interpolates cleanly into the message.
// If you added a 5th player to the array, this line would automatically say "Players: 5"
// without any other changes — that's the power of using .count instead of a hardcoded number.
print("Players: \(playerNames.count)")

// playerNames[0] gives us "Alex" — index 0 is always the first item.
// We build the full welcome string with interpolation so the output reads naturally.
print("Welcome, \(playerNames[0])!")

// Riley is the 4th player, so she's at index 3 (remember: 0, 1, 2, 3).
// scores[3] is also 0 — it lines up with playerNames[3] because both arrays
// have the same length and the same ordering: index 0 = Alex, index 3 = Riley.
print("\(playerNames[3])'s starting score: \(scores[3])")

//: ---
//:
//: ### Key Learnings
//:
//: - **`let` prevents accidental mutation.** Declaring `playerNames` as a constant means Swift will stop you — at compile time — if you ever try to add or remove a player. This is a free safety net; use it whenever the data shouldn't change.
//: - **`Array(repeating:count:)` is a scaling tool.** For 4 players it saves a little typing; for 100 players it's essential. You'll see this pattern in game development, algorithms, and any situation where you need a fixed-size collection with a known default value.
//: - **Parallel arrays share their index.** `playerNames[i]` and `scores[i]` both refer to the same player because they use the same index. This works, but it's fragile — if you accidentally reorder one array without reordering the other, the data no longer lines up. In later lessons you'll learn about dictionaries and structs, which bundle related data together so this can't happen.
//: - **`.count` is safer than a hardcoded number.** `"\(playerNames.count)"` stays correct automatically if you ever change the roster. Hardcoding `4` in the print statement would silently produce the wrong output the moment you add a fifth player.
//: - **Index arithmetic is a transferable skill.** Knowing that "the last item in an N-element array is at index N−1" is something you'll use constantly — in loops, in table views, in collection views. Getting comfortable with it now pays dividends throughout the rest of the course.
