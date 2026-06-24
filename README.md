# NativeScriptSDK

Swift Package for the NativeScript v8 iOS / visionOS runtime.

This repository is **manifest-only**. It contains no binaries. The
`NativeScript.xcframework` / `TKLiveSync.xcframework` artifacts are downloaded by
SwiftPM as versioned binary targets from the matching GitHub Release in
[`NativeScript/ios`](https://github.com/NativeScript/ios/releases).

`Package.swift` on `main` always points at the latest release; each release is
also published as a git tag (`X.Y.Z`) so you can pin an exact version.

## Usage

```swift
.package(url: "https://github.com/NativeScript/ios-spm.git", exact: "9.1.0")
```

Products:

| Product | Platforms | Wraps |
|---|---|---|
| `NativeScript` (or `NativeScriptSDK`) | iOS, inc. simulator + Mac Catalyst | runtime + TKLiveSync |
| `NativeScriptVisionOS` | visionOS, inc. simulator | runtime + TKLiveSync |

SwiftPM downloads only the artifacts for the product you link.

## Releasing

This package is updated automatically by the release flow in `NativeScript/ios`
(`.github/workflows/npm_release.yml` → `scripts/stamp-spm-release.mjs`), which
stamps the version and the artifact SHA-256 checksums into `Package.swift`,
commits to `main`, and pushes a `X.Y.Z` tag. Do not edit `Package.swift` by hand.
