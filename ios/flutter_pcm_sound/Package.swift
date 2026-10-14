// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_pcm_sound",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "flutter-pcm-sound", targets: ["flutter_pcm_sound"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_pcm_sound",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            linkerSettings: [
                .linkedFramework("CoreAudio")
            ]
        )
    ]
)
