// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-ble-assigned-numbers",
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
