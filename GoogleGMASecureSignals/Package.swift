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
        .package(url: "https://github.com/IABTechLab/uid2-ios-sdk.git", exact: "0.0.1")
    ],
    targets: [
        .target(
            name: "UID2GoogleGMASecureSignals",
            dependencies: [
                "GoogleMobileAds",
                .product(name: "UID2", package: "uid2-ios-sdk")
        ]),
        .binaryTarget(name: "GoogleMobileAds",
                      url: "https://dl.google.com/googleadmobadssdk/googlemobileadssdkios.zip",
                      checksum: "e8b46a316fe4690a529959121fbcf98c6570187176918422532557387c707eb4"),
        .testTarget(
            name: "UID2GoogleGMASecureSignalsTests",
            dependencies: ["UID2GoogleGMASecureSignals"])
    ]
)
