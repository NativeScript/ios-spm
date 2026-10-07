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

let nsVersion = "9.1.0-next.2026-10-07-37664278151"
let releaseBase = "https://github.com/NativeScript/ios/releases/download/v\(nsVersion)"

let package = Package(
    name: "NativeScriptSDK",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13),
    ],
    products: [
        // iOS family (iphoneos + iphonesimulator + Mac Catalyst). Apps built by
        // the NativeScript CLI link their own metadata and use this product.
        .library(name: "NativeScript", targets: ["NativeScript", "TKLiveSync"]),
        // For embedding NativeScript into an existing app: also bundles default
        // iOS SDK metadata, used when the host provides none of its own.
        .library(name: "NativeScriptSDK", targets: ["NativeScript", "TKLiveSync", "NativeScriptDefaultMetadata"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NativeScript",
            url: "\(releaseBase)/NativeScript.xcframework.zip",
            checksum: "e412d100f5dd0f4752a6aa798794ee1fee448242475ac61a549e9c779cb7ec3c"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "502bd022ea6acb7c3f8858d310efff2b2c61b75cffc1ac4181fc2cc98fc56e57"
        ),
        .binaryTarget(
            name: "NativeScriptDefaultMetadata",
            url: "\(releaseBase)/NativeScriptDefaultMetadata.xcframework.zip",
            checksum: "711edceae35993ec2e3f515960a01998ce0b5ae3b9e611528b9c093b7311ed6e"
        ),
    ]
)
