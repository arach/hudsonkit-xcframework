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
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.4/HudsonLive-0.3.4.xcframework.zip",
            checksum: "754c0ce431cae43251ce25803c6417df33b89c5d4206717af1a6bf7961a62c45"
        ),
        .binaryTarget(
            name: "HudsonObservability",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.4/HudsonObservability-0.3.4.xcframework.zip",
            checksum: "3454b446205bd1993f140c1f8a96e0769bbcceac9d8f7778a61bb1178b7c33c0"
        ),
        .binaryTarget(
            name: "HudsonUI",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.4/HudsonUI-0.3.4.xcframework.zip",
            checksum: "c9401155aba2fda6b708b550fde7560ea7648965488e29cc16ff6cb2d04c2d2d"
        ),
        .binaryTarget(
            name: "HudsonShell",
            url: "https://github.com/arach/hudsonkit-xcframework/releases/download/0.3.4/HudsonShell-0.3.4.xcframework.zip",
            checksum: "8dd6a50e99e8875fb28425c97c086c13607e0aa1036bf56deb43d96f509e918c"
        ),
    ]
)
