// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.6.1"
let package = Package(
    name: "ZohoDeskPortalAPIKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalAPIKit",
            targets: ["ZohoDeskPortalAPIKit", "ZohoPortalAuth", "ZIAMCrypt"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZIAMCrypt", url: "https://maven.zohodl.com/ZIAMCrypt/iOS/0.1.5/XCFramework.zip", checksum: "005d0128fa1573689f777e415a38d4bf1ade202908f7d26f451281b25e66f065"),
        .binaryTarget(name: "ZohoPortalAuth", url: "https://maven.zohodl.com/com/zoho/accounts/ios/zpauth/V1.1.0/Accounts_ios_clientportalFW_XCFramework.zip", checksum: "d4aebe71d11db2c878a00e65506542f20e111f8abb7a0dbc908630b4ee61e676"),
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/\(version)/ZohoDeskPortalAPIKit.zip", checksum: "127303285b28301bac840bec55384cfcc5cba624a94e625c5f6bb9a8e38ce2ed")
    ]
)
