// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKitFlutterCoreKMM-unspecified-9fc03dd8-d537-409a-9c8e-a7f1e86b113c.xcframework.zip"
let remoteKotlinChecksum = "fd7793311f72c890f76891899afaca81b5365a51124138a77b79873fed3fbd95"
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
