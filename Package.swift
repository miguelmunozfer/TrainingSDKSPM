// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrainingSDK",
    platforms: [
       .iOS(.v13) // Asegúrate de ajustar esto a la versión mínima de iOS que soporte tu SDK.
    ],
    products: [
        .library(
            name: "TrainingSDK",
            targets: ["TrainingSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .exact("5.4.0")),
        .package(url: "https://github.com/hmhv/YoutubePlayer-in-WKWebView", .upToNextMajor(from: "0.3.9")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .exact("5.0.0")),
        .package(url: "https://github.com/malcommac/SwiftDate", .upToNextMajor(from: "7.0.0")),
    ],
    targets: [
        .binaryTarget(
            name: "TrainingSDK",
            path: "./TrainingSDK.xcframework" // Asegúrate de ajustar la ruta al .xcframework
        )
    ]
)
