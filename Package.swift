// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScreenshotSecurity",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "ScreenshotSecurity",
            targets: ["ScreenshotSecurity"])
    ],
    targets: [
        .target(name: "ScreenshotSecurity")
    ]
)
