// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SeeURL",
    products: [
        .library(name: "SeeURL", targets: ["SeeURL"]),
    ],
    targets: [
        .systemLibrary(
            name: "CcURL",
            path: "Sources/CcURL",
            pkgConfig: "curl"
        ), 
        .target(name: "CcURLSwift", dependencies: ["CcURL"]), 
        .target(name: "SeeURL", dependencies: ["CcURLSwift"]),
        .testTarget(name: "SeeURLTests", dependencies: ["SeeURL"])
    ]
)

