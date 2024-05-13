// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.9"
let package = Package(
    name: "ZohoDeskPortalAPIKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalAPIKit",
            targets: ["ZohoDeskPortalAPIKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/\(version)/ZohoDeskPortalAPIKit.zip", checksum: "e71aa0a89ae397e43b47d67d1c2eca59ca2fc2f9fdd1a0d84422408bc73b4ac1")
    ]
)
