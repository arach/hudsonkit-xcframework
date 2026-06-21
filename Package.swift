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
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.2/HudsonLive-0.3.2.xcframework.zip",
            checksum: "c26b4740b5ea07c71e6c33fd71c5add229a8f7d6354862fbc04a456ae517cc6c"
        ),
        .binaryTarget(
            name: "HudsonObservability",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.2/HudsonObservability-0.3.2.xcframework.zip",
            checksum: "d9a55cced570176f188c55094ef7510e45ca77a96aa99cc892e94cdba2935e14"
        ),
        .binaryTarget(
            name: "HudsonUI",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.2/HudsonUI-0.3.2.xcframework.zip",
            checksum: "a36a5fcd7fb00b99fa2a9d349968f9b164c5b90ca72f95ba8e102e4daf13627d"
        ),
        .binaryTarget(
            name: "HudsonShell",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.2/HudsonShell-0.3.2.xcframework.zip",
            checksum: "c3e5c874799a075d5784be04c9bf99b63d5902487063e2506e098e66c627dcc5"
        ),
    ]
)
