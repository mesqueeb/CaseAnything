// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CaseAnything",
  products: [
    .library(
        name: "CaseAnything",
        targets: ["CaseAnything"]
    ),
  ],
  targets: [
    .target(
        name: "CaseAnything",
        swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
    ),
    .testTarget(
        name: "CaseAnythingTests",
        dependencies: ["CaseAnything"]
    ),
  ]
)
