// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HsToolKit",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "HsToolKit",
            targets: ["HsToolKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/apple/swift-nio.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/apple/swift-atomics.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "HsToolKit",
            dependencies: ["Alamofire", "ObjectMapper", "RxSwift", .product(name: "RxCocoa", package: "RxSwift"), .product(name: "NIOSSL", package: "swift-nio-ssl"), .product(name: "NIOWebSocket", package: "swift-nio"), .product(name: "NIOFoundationCompat", package: "swift-nio"), .product(name: "Atomics", package: "swift-atomics")]),
    ]
)
