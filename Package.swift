// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "CodeReset",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .executable(name: "code-reset", targets: ["CodeReset"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.8.2")
    ],
    targets: [
        .executableTarget(
            name: "CodeReset",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            resources: [
                .embedInCode("Resources/extensions.allowed.json")
            ],
        )
    ],
    swiftLanguageModes: [.v6]
)
