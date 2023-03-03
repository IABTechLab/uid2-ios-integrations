// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UID2GoogleIMASecureSignals",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "UID2GoogleIMASecureSignals",
            targets: ["UID2GoogleIMASecureSignals"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IABTechLab/uid2-ios-sdk.git", exact: "0.0.1")
    ],
    targets: [
        .target(
            name: "UID2GoogleIMASecureSignals",
            dependencies: [
                "GoogleInteractiveMediaAds",
                .product(name: "UID2", package: "uid2-ios-sdk")
        ]),
        .binaryTarget(name: "GoogleInteractiveMediaAds",
                      url: "https://imasdk.googleapis.com/native/downloads/ima-ios-v3.18.4.zip",
                      checksum: "2ca30c7ea01452dd8b522376729831c89b449283aeecba165f6b3e748af80c41"),
        .testTarget(
            name: "UID2GoogleIMASecureSignalsTests",
            dependencies: ["UID2GoogleIMASecureSignals"])
    ]
)
