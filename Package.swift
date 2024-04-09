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
        .package(url: "https://github.com/Alamofire/Alamofire", .exact("5.4.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .exact("5.0.0"))
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
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON")
            ],
            path: "Sources/TrainingSDKWrapper"
        )
    ]
)
