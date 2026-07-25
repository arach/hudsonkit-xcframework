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
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.3/HudsonLive-0.3.3.xcframework.zip",
            checksum: "b44952da539a92c4ab9ec5d7f3543250926327ce3a25bcda1043f763959e4774"
        ),
        .binaryTarget(
            name: "HudsonObservability",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.3/HudsonObservability-0.3.3.xcframework.zip",
            checksum: "b6161da5eb730c69d18ea3a09778ecd8daa5fcd585a3b599e7f94dcd0d5683d2"
        ),
        .binaryTarget(
            name: "HudsonUI",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.3/HudsonUI-0.3.3.xcframework.zip",
            checksum: "d9f9d9b7a4349db3e3cdc20100db06b4bbb7ebc7048ef60f11b56f63ec0e0694"
        ),
        .binaryTarget(
            name: "HudsonShell",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.3/HudsonShell-0.3.3.xcframework.zip",
            checksum: "f9c558693722a05d3f49675ffd753e0175923775ac114b85efd3efc36a7df61c"
        ),
    ]
)
