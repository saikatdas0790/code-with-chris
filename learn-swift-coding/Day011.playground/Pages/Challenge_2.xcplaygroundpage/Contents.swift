//: # Lesson 3.1: For Loops with Ranges
//: ## Challenge 2
//:
//: ### What you practiced in this lesson:
//: - A `for` loop can read and modify a variable declared outside it — but that variable must be `var`
//: - The loop variable holds the current number on each pass, which you can use in calculations
//: - You can use `+=` inside a loop to keep a running total
//:
//: ---
//:
//: ### Your Challenge
//:
//: One of the most common things loops do in real apps is add up a list of numbers.
//: Let's practice that pattern here.
//:
//: Write code that calculates the sum of every whole number from 1 to 20, then prints the result.
//:
//: Here's how to break it down:
//:
//: 1. Declare a variable called `total` and set it to `0`
//: 2. Write a for loop that goes through the numbers 1 to 20 (inclusive)
//: 3. Inside the loop, add the current loop number to `total`
//: 4. After the loop, print `total`
//:
//: **Hint:** `total += i` is shorthand for `total = total + i`. Both work — pick whichever feels clearer.
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: 210
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓
let total = (1...20).reduce(into: 0, {(runningTotal, number) in
    runningTotal = runningTotal + number;
});

print("\(total)");
