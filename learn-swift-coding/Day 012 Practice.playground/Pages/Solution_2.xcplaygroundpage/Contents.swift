//: # Lesson 5.1: Arrays
//: ## Solution 2
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 2 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Solution

// Explicit type annotation ([String]) is useful here even though Swift could infer it,
// because it makes the intent clear: this array is meant to hold only strings.
// Both styles are correct — pick whichever reads more clearly in context.
var ingredients: [String] = ["banana", "strawberry", "mango", "blueberry", "spinach"]

// String interpolation embeds the .count value directly inside the message.
// This is the same \() syntax you used with variables — arrays are no different.
print("This smoothie has \(ingredients.count) ingredients.")

// Index 0 is always the first item. Hardcoding [0] is safe and intentional here —
// we specifically want the first ingredient, not a variable position.
print("First ingredient: \(ingredients[0])")

// Index 4 is the last item in a 5-element array (indexes 0, 1, 2, 3, 4).
// In later lessons you'll learn ingredients[ingredients.count - 1] or ingredients.last
// to avoid hardcoding the index — but for now, counting from 0 is the right approach.
print("Last ingredient: \(ingredients[4])")

//: ---
//:
//: ### Key Learnings
//:
//: - **Explicit type annotations add clarity.** `var ingredients: [String]` tells any reader — including future you — exactly what this array holds. Use it when the contents aren't immediately obvious from the values.
//: - **`.count` works inside string interpolation.** `"\(ingredients.count)"` evaluates the property and converts the result to a string automatically. You can embed any expression, not just simple variable names.
//: - **Hardcoded indexes are fine — until they're not.** Accessing `ingredients[4]` works perfectly when you know the array size won't change. If the array could grow or shrink, you'd want a dynamic approach. In Stage 5 you'll learn `ingredients.last` for exactly this reason.
//: - **Explicit type + string interpolation is a core iOS pattern.** When you build a SwiftUI list or a UITableView, you'll create typed arrays and display values using this exact combination — typed storage, count-based labels, index-based access.
