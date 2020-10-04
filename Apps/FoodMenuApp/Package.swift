// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FoodMenuApp",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FoodMenuApp",
            targets: ["FoodMenuApp"]),
    ],
    dependencies: [
        .package(name: "PixelPerfectCore", path: "../../Packages/PixelPerfectCore")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FoodMenuApp",
            dependencies: [
                .product(name: "PixelPerfectCore", package: "PixelPerfectCore")
            ]),
        .testTarget(
            name: "FoodMenuAppTests",
            dependencies: ["FoodMenuApp"]),
    ]
)
