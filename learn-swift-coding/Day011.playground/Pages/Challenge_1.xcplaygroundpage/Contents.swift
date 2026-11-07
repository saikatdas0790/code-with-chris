//: # Lesson 3.1: For Loops with Ranges
//: ## Challenge 1
//:
//: ### What you practiced in this lesson:
//: - A `for` loop runs a block of code once for each number in a range
//: - The closed range operator `...` includes both the start and end numbers
//: - You can use the loop variable inside string interpolation to show the current count
//:
//: ---
//:
//: ### Your Challenge
//:
//: You're building a photo slideshow feature for an iOS app.
//: The album has 6 photos, and you want to display a progress label for each one.
//:
//: Write a for loop that produces the following output:
//:
//: 1. Loop through the numbers 1 to 6 (include both endpoints)
//: 2. For each number, print: `Photo X of 6` — where X is the current photo number
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: Photo 1 of 6
//: Photo 2 of 6
//: Photo 3 of 6
//: Photo 4 of 6
//: Photo 5 of 6
//: Photo 6 of 6
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓

(1...6).forEach({number in
    print("Photo \(number) of 6")
})
