// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-airports",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftAirports",
            targets: ["SwiftAirports"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift-sovereign-states.git", from: "1.3.2"),
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftAirports",
            dependencies: [
                .product(name: "SwiftSovereignStates", package: "swift-sovereign-states")
            ],
            path: "./Sources/swift-airports"
        ),
        .testTarget(
            name: "swift-airportsTests",
            dependencies: [
                "SwiftAirports",
                .product(name: "Kanna", package: "kanna")
            ]
        ),
    ]
)
