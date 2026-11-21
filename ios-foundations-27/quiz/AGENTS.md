# Quiz navigation

Use a SwiftUI [NavigationStack](https://developer.apple.com/documentation/swiftui/navigationstack) with the quiz picker as its root. Each `NavigationLink` opens one question screen; keep the native Back control and bind the destination to its picker-owned quiz machine so returning to the picker preserves each quiz’s progress.
