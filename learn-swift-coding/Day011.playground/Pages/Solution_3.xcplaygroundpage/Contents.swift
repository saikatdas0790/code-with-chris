//: # Lesson 3.1: For Loops with Ranges
//: ## Solution 3
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 3 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Solution

// reminderCount lives outside the loop so it persists between iterations.
// We read its final value after the loop ends to report the total.
var reminderCount = 0

// stride(from:through:by:) is the right tool here for three reasons:
// 1. We start at 15, not 1 — a plain range would generate too many iterations
// 2. We need to step by 15, not by 1
// 3. We want minute 60 included — "through:" includes the final value, "to:" would stop at 45
for minute in stride(from: 15, through: 60, by: 15) {
    // Naming the loop variable "minute" instead of "i" makes the code self-documenting.
    // Anyone reading this immediately knows what the variable represents.
    print("Drink water at minute \(minute)")

    // Increment the counter on every pass so we know how many reminders ran.
    // += 1 is shorthand for reminderCount = reminderCount + 1.
    reminderCount += 1
}

// Printed after the loop so it appears once at the end, not mixed in with the reminders.
print("Total reminders: \(reminderCount)")

//: ---
//:
//: ### Key Learnings
//:
//: - **`stride` is for when 1 isn't the right step size.** Any time you need to count by 2s, 5s, 15s — or count *down* — `stride` is the tool. A plain range like `1...60` would give you 60 iterations instead of 4.
//: - **`through:` vs `to:` is easy to mix up and hard to spot.** `through: 60` includes 60; `to: 60` stops at 45. When you use `stride`, always double-check your output against the last value you expect to see.
//: - **Descriptive loop variable names are worth it.** `for minute in stride(...)` reads almost like English. `for i in stride(...)` is valid Swift, but you lose the self-documenting quality. In real app code, clarity beats brevity.
//: - **Loop bodies can do multiple things.** Here we both print a message *and* increment a counter on every pass. There's no rule limiting a loop body to one statement.
//: - **This combination — stride + accumulator — is common in real iOS development.** Notification scheduling (every N minutes), progress bar steps, animation frame calculations: you'll write this pattern more often than you might expect.
