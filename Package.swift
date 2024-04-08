// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrainingSDK",
    platforms: [
       .iOS(.v10) // Ajusta esto a la versión mínima de iOS que soporte tu SDK.
    ],
    products: [
        .library(
            name: "TrainingSDK",
            targets: ["TrainingSDKWrapper"]),
    ],
    dependencies: [
        // Dependencias de tu SDK
        .package(url: "https://github.com/Alamofire/Alamofire", .exact("5.4.0")),
        .package(url: "https://github.com/hmhv/YoutubePlayer-in-WKWebView", .upToNextMajor(from: "0.3.9")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .exact("5.0.0")),
        .package(url: "https://github.com/malcommac/SwiftDate", .upToNextMajor(from: "7.0.0")),
    ],
    targets: [
        .binaryTarget(
            name: "TrainingSDK",
            path: "./TrainingSDK.xcframework"
        ),
        .target(
            name: "TrainingSDKWrapper",
            dependencies: [
                "TrainingSDK",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "YoutubePlayer_in_WKWebView", package: "YoutubePlayer-in-WKWebView"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "SwiftDate", package: "SwiftDate")
            ],
            path: "Sources/TrainingSDKWrapper" // Esta es una ruta ficticia. Deberás crear una estructura que funcione para tu caso específico.
        )
    ]
)
