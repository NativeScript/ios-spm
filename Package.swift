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

let nsVersion = "9.1.2-next.2026-11-21-44947699854"
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
        .library(name: "NativeScript", targets: ["NativeScript", "TKLiveSync", "NativeScriptLeakProbe"]),
        // For embedding NativeScript into an existing app: also bundles default
        // iOS SDK metadata, used when the host provides none of its own.
        .library(name: "NativeScriptSDK", targets: ["NativeScript", "TKLiveSync", "NativeScriptLeakProbe", "NativeScriptDefaultMetadata"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NativeScript",
            url: "\(releaseBase)/NativeScript.xcframework.zip",
            checksum: "94265b9ffd6d7744fbed04bb90018dba04ef85060218a3cd51c365fb9b8b6060"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "c0ffb9d054933c5a8415574e7ae3484b3752cba2a936bc0620c40e63395fc440"
        ),
        .binaryTarget(
            name: "NativeScriptLeakProbe",
            url: "\(releaseBase)/NativeScriptLeakProbe.xcframework.zip",
            checksum: "859f9f040bc10afc42928f580c4a16f34829fac8a0fc1442dc980c0ecdcb31e4"
        ),
        .binaryTarget(
            name: "NativeScriptDefaultMetadata",
            url: "\(releaseBase)/NativeScriptDefaultMetadata.xcframework.zip",
            checksum: "151c5e0aab7e773b02e09f85a91b424712f55213ddaa64fe34b01f2d7df039a8"
        ),
    ]
)
