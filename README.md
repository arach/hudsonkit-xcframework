# HudsonKit XCFramework

Public SwiftPM binary package for HudsonKit Apple artifacts.

This repository intentionally contains no Hudson source. Release tags contain a
generated `Package.swift` that points Swift Package Manager at prebuilt
`.xcframework.zip` assets hosted on this repository's GitHub Releases.

## Consumer Usage

Add one package dependency:

```swift
.package(
    url: "https://github.com/arach/hudsonkit-xcframework.git",
    exact: "1.2.0"
)
```

Then depend on the products you need:

```swift
.product(name: "HudsonUI", package: "hudsonkit-xcframework")
.product(name: "HudsonShell", package: "hudsonkit-xcframework")
```

## Package Shape

The public dependency is one Swift package. Internally it may contain several
binary targets because SwiftPM binary targets cannot declare transitive
dependencies.

Current expected release shape:

- Products: `HudsonUI`, `HudsonShell`
- Binary targets: `HudsonLive`, `HudsonObservability`, `HudsonUI`,
  `HudsonShell`

## Releases

Release artifacts are built from the private Hudson source repo. See
`RELEASING.md` for the publishing steps.
