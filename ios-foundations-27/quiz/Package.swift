// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QuizFeature",
    platforms: [.iOS("26.6"), .macOS("26.6"), .visionOS("26.6")],
    products: [
        .library(name: "QuizFeature", targets: ["QuizFeature"]),
    ],
    targets: [
        .target(
            name: "QuizFeature",
            resources: [.process("Resources")],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
                .defaultIsolation(MainActor.self),
            ]
        ),
    ]
)
