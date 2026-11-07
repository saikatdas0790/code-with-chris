//: # Lesson 3.1: For Loops with Ranges
//: ## Solution 1
//:
//: ### Try the challenge yourself first!
//: If you haven't attempted Challenge 1 yet, go back and give it a shot before reading this.
//: Wrestling with a problem — even if you get stuck — is where the real learning happens.
//:
//: ---

// MARK: - Solution

// We use a closed range (1...6) because we want photo 6 included in the output.
// A half-open range (1..<6) would stop at 5 — one photo short.
for i in 1...6 {
    // String interpolation embeds the current value of i directly into the string.
    // Swift evaluates \(i) fresh on each iteration, so it always shows the right number.
    print("Photo \(i) of 6")
}

//: ---
//:
//: ### Key Learnings
//:
//: - **Closed range (`...`) includes both endpoints.** `1...6` produces 1, 2, 3, 4, 5, and 6. If you accidentally used `1..<6`, you'd only get five photos — a classic off-by-one mistake that's easy to introduce and easy to miss.
//: - **The loop variable updates automatically.** You never write `i = i + 1`. Swift handles the incrementing; your only job is to declare the range.
//: - **String interpolation works inside loop bodies.** `\(i)` is re-evaluated on every pass, so it always reflects the current count — not just the value it had when the loop started.
//: - **You can mix fixed text and variables in one string.** `"Photo \(i) of 6"` combines a changing value (`i`) with static text (`"of 6"`). This is exactly how progress labels work in real UIKit and SwiftUI apps.
//: - **This pattern is everywhere in iOS.** Page indicators, "X of Y" labels, onboarding step counters — any time you display a numbered sequence, a closed-range for loop is the natural tool to reach for.
