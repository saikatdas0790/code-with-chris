//: # Lesson 5.1: Arrays
//: ## Challenge 2
//:
//: ### What you practiced in this lesson:
//: - You can declare an array's type explicitly using `[Type]` syntax
//: - Use index access to read specific items, and `.count` to find the total
//: - String interpolation (from an earlier lesson) lets you embed array values inside messages
//:
//: ---
//:
//: ### Your Challenge
//:
//: You're building a smoothie recipe feature. The recipe calls for five ingredients.
//:
//: 1. Create an array called `ingredients` with the explicit type `[String]`.
//:    Add these five items in this order: "banana", "strawberry", "mango", "blueberry", "spinach"
//: 2. Print a message using string interpolation that shows the total count, like:
//:    `This smoothie has 5 ingredients.`
//: 3. Print the first ingredient with this format:
//:    `First ingredient: banana`
//: 4. Print the last ingredient with this format:
//:    `Last ingredient: spinach`
//:
//: **Hint:** The last item in a 5-element array is at index 4. Count forward from 0 to find it.
//:
//: ---
//:
//: ### Expected Output
//:
//: When your code is complete, the results sidebar or console should show:
//:
//: ```
//: This smoothie has 5 ingredients.
//: First ingredient: banana
//: Last ingredient: spinach
//: ```
//:
//: If your output matches this, you've got it! ✓
//:
//: ---

// Write your code below this line ↓
let ingredients = ["banana", "strawberry", "mango", "blueberry", "spinach"];
print("This smoothie has \(ingredients.count) ingredients");
print("First ingredient: \(ingredients.first ?? "None")")
print("Last ingredient: \(ingredients.last ?? "None" )")
