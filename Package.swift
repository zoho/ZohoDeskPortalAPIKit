// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.5.8"
let package = Package(
    name: "ZohoDeskPortalAPIKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "ZohoPortalAuth", targets: ["ZohoPortalAuth"]),
        .library(
            name: "ZohoDeskPortalAPIKit",
            targets: ["ZohoDeskPortalAPIKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoPortalAuth", url: "https://maven.zohodl.com/com/zoho/accounts/ios/zpauth/V1.1.0/Accounts_ios_clientportalFW_XCFramework.zip", checksum: "d4aebe71d11db2c878a00e65506542f20e111f8abb7a0dbc908630b4ee61e676"),
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/\(version)/ZohoDeskPortalAPIKit.zip", checksum: "9bae4a184e8629e04c937df77871fc620914143dcd228afd6e9b0e8a504a1d2d")
    ]
)
