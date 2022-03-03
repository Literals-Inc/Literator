// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Literator",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Literator",
            // `binaryTarget` does not allow dependencies. Instead use this wrapper to support future dependencies
            targets: ["LiteratorCore"]),
    ],
    dependencies: [
        // Add dependencies for the Literator package here
        // .package(url: "URL_OF_GIT_REPO", .upToNextMajor(from: "X.X.X")),    
    ],
    targets: [
        .binaryTarget(name: "Literator", path: "./Literator/Literator.xcframework"),
        .target(
            name: "LiteratorCore", 
            dependencies: ["Literator"], 
            path: "./LiteratorCore"
        )
    ]
)
