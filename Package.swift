// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// GENERATED FILE — DO NOT EDIT BY HAND.
// Emitted per release by scripts/generate-spm-manifest.mjs in
// github.com/NativeScript/ios. The target set mirrors the assets the release
// publishes: the rolling "next" channel builds iOS only, so its manifests omit
// the visionOS product/targets (SwiftPM eagerly downloads every binaryTarget
// in a resolved manifest, and a target without an uploaded asset would break
// resolution for every consumer of that version).
//
// Copyright OpenJS Foundation and other contributors, https://openjsf.org
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import PackageDescription

let nsVersion = "9.1.0-alpha.20"
let releaseBase = "https://github.com/NativeScript/ios/releases/download/v\(nsVersion)"

let package = Package(
    name: "NativeScriptSDK",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13),
        .visionOS(.v1),
    ],
    products: [
        // iOS family (iphoneos + iphonesimulator + Mac Catalyst)
        .library(name: "NativeScript", targets: ["NativeScript", "TKLiveSync"]),
        // Backwards-compatible alias for the historical product name.
        .library(name: "NativeScriptSDK", targets: ["NativeScript", "TKLiveSync"]),
        // visionOS family (xros + xrsimulator)
        .library(name: "NativeScriptVisionOS", targets: ["NativeScriptVisionOS", "TKLiveSyncVisionOS"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NativeScript",
            url: "\(releaseBase)/NativeScript.xcframework.zip",
            checksum: "772c6ddf332978b87c087b0401fa630cf2429ba6540677b506d2bc1edf773d59"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "e69b0669936d2454b3aac68c91a4fe0dc81879cc847301a8eea639b8b0fac396"
        ),
        .binaryTarget(
            name: "NativeScriptVisionOS",
            url: "\(releaseBase)/NativeScript.visionos.xcframework.zip",
            checksum: "90297c0eb718b6322502c25917abf1de7333fe54e5120f020b46a74d17253dd4"
        ),
        .binaryTarget(
            name: "TKLiveSyncVisionOS",
            url: "\(releaseBase)/TKLiveSync.visionos.xcframework.zip",
            checksum: "fd75d8219d1ea4288b7f45c778c735071985af7f442d5a5563757af2c81e7193"
        ),
    ]
)
