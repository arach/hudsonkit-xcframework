// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HudsonKitXCFramework",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "HudsonUI", targets: ["HudsonLive", "HudsonObservability", "HudsonUI"]),
        .library(name: "HudsonShell", targets: ["HudsonLive", "HudsonObservability", "HudsonUI", "HudsonShell"]),
    ],
    targets: [
        .binaryTarget(
            name: "HudsonLive",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.1/HudsonLive-0.3.1.xcframework.zip",
            checksum: "02f3693c3172f02524b3492880eace97c4c125cd552b52169fe206dd7c8aa88f"
        ),
        .binaryTarget(
            name: "HudsonObservability",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.1/HudsonObservability-0.3.1.xcframework.zip",
            checksum: "0a0a557b4fa42334bd80ddfb4a3e45863e5ccdbc5f3b84068bb262d0ccf839e0"
        ),
        .binaryTarget(
            name: "HudsonUI",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.1/HudsonUI-0.3.1.xcframework.zip",
            checksum: "c9e7267d52ba2f14093dd63222a4512c8f9680cadc213e69cb216879d0c0f754"
        ),
        .binaryTarget(
            name: "HudsonShell",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.1/HudsonShell-0.3.1.xcframework.zip",
            checksum: "920c6fc36a1f2b4aa72354969055b12787e0e9d0bc5333882705b60c6a38073f"
        ),
    ]
)
