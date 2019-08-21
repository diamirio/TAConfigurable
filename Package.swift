// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TAConfigurable",
    products: [
        .library(
            name: "TAConfigurable",
            targets: ["TAConfigurable"]
        )
    ],
    targets: [
        .target(
            name: "TAConfigurable",
            dependencies: [],
            path: "TAConfigurable"
        ),
        .testTarget(
            name: "TAConfigurableTests",
            dependencies: [
                "TAConfigurable"
            ],
            path: "TAConfigurableTests"
        )
    ]
)
