//: # Lesson 3.1: For Loops with Ranges
//: ## Solution 2
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 2 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Solution

// total must be var, not let, because its value changes on every loop pass.
// Declaring it outside the loop means it keeps its value between iterations.
// If it were declared inside the loop, it would reset to 0 every time — nothing would accumulate.
var total = 0

for i in 1...20 {
    // += adds i to whatever total already holds and stores the result back in total.
    // On pass 1: total becomes 0 + 1 = 1
    // On pass 2: total becomes 1 + 2 = 3
    // ... and so on until pass 20 gives us the final answer.
    total += i
}

// Printing outside the loop gives us one line of output — the final sum.
// Moving this line inside the loop would print 20 intermediate totals instead.
print(total)

//: ---
//:
//: ### Key Learnings
//:
//: - **Declare accumulators outside the loop.** A variable declared inside a loop resets on every pass. Placing `total` outside means its value carries forward from one iteration to the next — which is exactly what accumulation requires.
//: - **`var` vs `let` is not optional here.** Swift won't let you assign to a `let` constant, so any variable a loop modifies must be `var`. "Cannot assign to value: 'total' is a 'let' constant" is one of the most common beginner errors, and this is the scenario that triggers it.
//: - **The loop variable is a number you can do math with.** `i` doesn't have to be printed — it can be added, multiplied, or used in any calculation. Loops are computing tools, not just output tools.
//: - **Print after the loop, not inside it, when you only want the final result.** Position of your `print` statement is part of the logic, not just formatting.
//: - **This accumulator pattern is everywhere in iOS.** Shopping cart totals, step counts, scores, download sizes — any time you're summing or building up a value one piece at a time, you'll write this exact structure. Recognising it early pays off for a long time.
