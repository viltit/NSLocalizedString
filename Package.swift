// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "Localized",
    products: [
        .executable(name: "Localized", targets: ["Localized"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Localized", dependencies: []),
    ]
)
