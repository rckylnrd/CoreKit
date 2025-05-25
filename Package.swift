// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "CoreNetwork", targets: ["CoreNetwork"]),
        .library(name: "CoreUI", targets: ["CoreUI"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        // main target
        .target(name: "CoreNetwork", dependencies: []),
        .target(name: "CoreUI", dependencies: []),
        
        // Test targets
        .testTarget(name: "CoreNetworkTests", dependencies: ["CoreNetwork"]),
        .testTarget(name: "CoreUITests", dependencies: ["CoreUI"])
    ]
)
