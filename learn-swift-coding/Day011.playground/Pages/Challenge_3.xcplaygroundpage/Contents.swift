//: # Lesson 3.1: For Loops with Ranges
//: ## Challenge 3
//:
//: ### What you practiced in this lesson:
//: - `stride(from:through:by:)` lets you loop in steps larger than 1 — or even count backward
//: - `through:` includes the final value; `to:` stops just before it
//: - You can combine a stride loop with an accumulator to count how many times the loop ran
//:
//: ---
//:
//: ### Your Challenge
//:
//: You're building a running tracker app. The run lasts 60 minutes, and the app reminds
//: the user to drink water every 15 minutes — at minutes 15, 30, 45, and 60.
//:
//: Here's what you need to build:
//:
//: 1. Declare a variable called `reminderCount` and set it to `0`
//: 2. Use a `stride` loop to step through minutes 15, 30, 45, and 60
//: 3. Inside the loop, print: `Drink water at minute X` — where X is the current minute
//: 4. Also inside the loop, add `1` to `reminderCount` on each pass
//: 5. After the loop ends, print: `Total reminders: X` — where X is `reminderCount`
//:
//: **Hint:** Use `stride(from: 15, through: 60, by: 15)`. The `through:` label means minute 60 is included. If you use `to: 60` instead, the loop stops at minute 45.
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: Drink water at minute 15
//: Drink water at minute 30
//: Drink water at minute 45
//: Drink water at minute 60
//: Total reminders: 4
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓
stride(from: 15, through: 60, by: 15)
    .forEach({(step) in print("Drink water at minute \(step)")})
