# Releasing HudsonKit XCFramework

Build artifacts from the private Hudson source checkout:

```bash
cd /Users/art/dev/hudson
scripts/apple/build-xcframeworks.sh --version 1.2.0
```

The script writes a generated binary package to:

```text
dist/apple-xcframeworks/1.2.0/
```

That directory contains:

- `Package.swift`
- `checksums.txt`
- `HudsonLive-1.2.0.xcframework.zip`
- `HudsonObservability-1.2.0.xcframework.zip`
- `HudsonUI-1.2.0.xcframework.zip`
- `HudsonShell-1.2.0.xcframework.zip`

Publish the release:

```bash
VERSION=1.2.0
HUDSON=/Users/art/dev/hudson
DEPS=/Users/art/dev/hudsonkit-xcframework

cp "$HUDSON/dist/apple-xcframeworks/$VERSION/Package.swift" "$DEPS/Package.swift"

cd "$DEPS"
git add Package.swift
git commit -m "Release $VERSION"
git tag "$VERSION"
git push origin main
git push origin "$VERSION"

gh release create "$VERSION" \
  "$HUDSON/dist/apple-xcframeworks/$VERSION/"*.xcframework.zip \
  "$HUDSON/dist/apple-xcframeworks/$VERSION/checksums.txt" \
  --repo arach/hudsonkit-xcframework \
  --title "$VERSION" \
  --notes "HudsonKit binary artifacts for $VERSION"
```

The generated manifest URLs assume release assets live at:

```text
https://github.com/arach/hudsonkit-xcframework/releases/download/<version>/
```
