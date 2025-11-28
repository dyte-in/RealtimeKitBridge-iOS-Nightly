// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKitFlutterCoreKMM-unspecified-345134ee-9022-4a68-9406-798406148c9b.xcframework.zip"
let remoteKotlinChecksum = "21fca14d4954d3ee99f596cd2fa9d3042e280c47a39897024b3ff3a5d05e01b2"
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
