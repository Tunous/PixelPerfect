// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PixelPerfectCore",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "PixelPerfectCore",
            targets: ["PixelPerfectCore"]
        ),
        .library(
            name: "SimpleWeatherApp",
            targets: ["SimpleWeatherApp"]
        ),
        .library(
            name: "FoodMenuApp",
            targets: ["FoodMenuApp"]
        ),
        .library(
            name: "GoodreadsApp",
            targets: ["GoodreadsApp"]
        ),
        .library(
            name: "WateringPlantApp",
            targets: ["WateringPlantApp"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "PixelPerfectCore",
            dependencies: []
        ),
        .target(
            name: "SimpleWeatherApp",
            dependencies: [
                "PixelPerfectCore"
            ]
        ),
        .target(
            name: "FoodMenuApp",
            dependencies: [
                "PixelPerfectCore"
            ],
            resources: [.process("Fonts")]
        ),
        .target(
            name: "GoodreadsApp",
            dependencies: [
                "PixelPerfectCore"
            ]
        ),
        .target(
            name: "WateringPlantApp",
            dependencies: [
                "PixelPerfectCore"
            ]
        ),
        .testTarget(
            name: "PixelPerfectCoreTests",
            dependencies: ["PixelPerfectCore"]
        ),
    ]
)
