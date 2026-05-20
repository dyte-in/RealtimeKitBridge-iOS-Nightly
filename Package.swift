// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKitFlutterCoreKMM-unspecified-39d4a6cb-cccb-44ce-9c75-56cd8ddbcbbe.xcframework.zip"
let remoteKotlinChecksum = "e5eaa6350e6a06820bdeb7e4e97512c71d3ff17eb0a1f65cd7e766d09e7af178"
let packageName = "RealtimeKitFlutterCoreKMM"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "RealtimeKitBridge",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: packageName, targets: [packageName, "RTKWebRTC"]),
        .library(name: "RTKWebRTC", targets: ["RTKWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "RTKWebRTC",
            url: "https://sdk-assets.realtime.cloudflare.com/RTKWebRTC-137.7151.10.2.zip",
            checksum: "2a56715d11dc3cbb722b43fc712fec68d9838b68b7297076e7ac3d0f8e9b6ccb"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
