// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UID2GoogleGMASecureSignals",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "UID2GoogleGMASecureSignals",
            targets: ["UID2GoogleGMASecureSignals"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IABTechLab/uid2-ios-sdk.git", exact: "0.0.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "10.2.0")
    ],
    targets: [
        .target(
            name: "UID2GoogleGMASecureSignals",
            dependencies: [
                .product(name: "UID2", package: "uid2-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ]),
        .testTarget(
            name: "UID2GoogleGMASecureSignalsTests",
            dependencies: ["UID2GoogleGMASecureSignals"])
    ]
)
