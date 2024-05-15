// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrainingSDK",
    platforms: [
       .iOS(.v12)
    ],
    products: [
        .library(
            name: "TrainingSDK",
            targets: ["TrainingSDKWrapper"]),
    ],
    dependencies: [
        // Dependencias de tu SDK
        .package(url: "https://github.com/ephread/Instructions", .exact("2.3.0"))
    ],
    targets: [
        .binaryTarget(
            name: "TrainingSDK",
            path: "./TrainingSDK.xcframework"
        ),
        .binaryTarget(
            name: "WeFitterLib",
            path: "./WeFitterLib.xcframework"
        ),
        .target(
            name: "TrainingSDKWrapper",
            dependencies: [
                "TrainingSDK",
                "WeFitterLib",
                .product(name: "Instructions", package: "Instructions")
            ],
            path: "Sources/TrainingSDKWrapper"
        )
    ]
)
