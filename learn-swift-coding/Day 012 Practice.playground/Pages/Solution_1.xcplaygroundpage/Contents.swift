//: # Lesson 5.1: Arrays
//: ## Solution 1
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 1 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Solution

// Swift sees five integers and infers the type as [Int] automatically.
// Writing the type explicitly (var forecast: [Int] = [...]) would also work,
// but type inference keeps the code cleaner when the values make the type obvious.
var forecast = [72, 68, 75, 80, 65]

// Index 0 is the first item — this is the day 1 temperature.
// Remember: Swift arrays are zero-indexed, so the first slot is [0], not [1].
print(forecast[0])

// Index 2 is the third item (0, 1, 2) — day 3 in plain English.
// This off-by-one relationship between "day number" and "index" trips up
// almost every beginner at least once. Saying it out loud helps: "index 2 is day 3."
print(forecast[2])

// .count gives the number of items, which is 5 here.
// Note: .count is always 1 more than the last valid index (4 in this case).
// Confusing these two is the most common cause of out-of-range crashes in beginners' code.
print(forecast.count)

//: ---
//:
//: ### Key Learnings
//:
//: - **Indexes start at 0.** The first item is always at `[0]`, the second at `[1]`, and so on. This is a universal rule in programming, not just Swift — once it clicks, it stays clicked.
//: - **Type inference keeps your code clean.** When you write `var forecast = [72, 68, 75, 80, 65]`, Swift figures out the type is `[Int]` without you saying so. You only need to write the type explicitly when the array is empty or when the type isn't obvious.
//: - **`.count` and the last valid index are different things.** A 5-item array has `.count` of 5, but the last valid index is 4. Accessing `forecast[5]` would crash at runtime — Swift doesn't warn you at compile time.
//: - **`var` vs `let` matters even for arrays.** This solution uses `var` even though we never change the array — in practice you'd use `let` here. Habit: reach for `let` first, switch to `var` only if you need to modify the array.
//: - **Array access is the backbone of iOS list features.** Every time a table view or list displays a row, it's using an index to pull the right item from an array. Understanding indexes now makes that pattern feel natural later.
