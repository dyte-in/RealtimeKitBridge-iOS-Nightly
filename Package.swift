// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKitFlutterCoreKMM-unspecified-0c9bfc89-c3e9-48eb-ac9b-db3fff902d85.xcframework.zip"
let remoteKotlinChecksum = "29cd5f4a2cbba8a1a2a151bd6b50a86b73c8e2a53e5df3678e1e6ab7bc4bd9ab"
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
            url: "https://sdk-assets.realtime.cloudflare.com/RTKWebRTC-v125.6422.07.zip",
            checksum: "114cb3ea15c5709f2c35d2b1c7a64e742a6902d375d54895984263bb79d75ce3"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
