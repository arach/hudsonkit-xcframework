// swift-tools-version: 5.9
import PackageDescription

// Placeholder manifest for the public binary package repository.
//
// Each release tag replaces this file with the generated manifest from:
//   scripts/apple/build-xcframeworks.sh --version <version>
//
// Consumers should depend on exact release tags that contain binary targets.
let package = Package(
    name: "HudsonKitDeps",
    platforms: [.macOS(.v14)],
    products: [],
    targets: []
)
