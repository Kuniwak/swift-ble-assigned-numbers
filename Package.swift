// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-ble-macro",
    products: [
        .library(
            name: "BLEAssignedNumbers",
            targets: ["BLEAssignedNumbers"]
        ),
    ],
    targets: [
        .target(name: "BLEAssignedNumbers"),
    ]
)
