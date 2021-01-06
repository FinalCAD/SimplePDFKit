// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SimplePDFKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "SimplePDFKit", targets: ["SimplePDFKit"])
    ],
    targets: [
        .binaryTarget(name: "SimplePDFKit", path: "SimplePDFKit/artifact/SimplePDFKit.xcframework"),
    ]
)
