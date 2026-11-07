//: # Lesson 5.1: Arrays
//: ## Challenge 1
//:
//: ### What you practiced in this lesson:
//: - An array stores an ordered list of values, all of the same type
//: - You access any item using its index — indexes start at 0, not 1
//: - The `.count` property tells you how many items are in an array
//:
//: ---
//:
//: ### Your Challenge
//:
//: You're building a weather app that shows a 5-day forecast.
//: The predicted high temperatures (in Fahrenheit) are: 72, 68, 75, 80, 65
//:
//: 1. Create an array called `forecast` that holds those five temperatures.
//:    Let Swift infer the type — no need to write `[Int]` explicitly.
//: 2. Print the temperature for day 1 (index 0)
//: 3. Print the temperature for day 3 (index 2)
//: 4. Print how many days are in the forecast using `.count`
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: 72
//: 75
//: 5
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓
let forecast = [72, 68, 75, 80, 65]
print(forecast[0])
print(forecast[2])
print(forecast.count)
