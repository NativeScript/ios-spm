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

let nsVersion = "9.0.4-next.2026-08-11-31504351195"
let releaseBase = "https://github.com/NativeScript/ios/releases/download/v\(nsVersion)"

let package = Package(
    name: "NativeScriptSDK",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13),
    ],
    products: [
        // iOS family (iphoneos + iphonesimulator + Mac Catalyst)
        .library(name: "NativeScript", targets: ["NativeScript", "TKLiveSync"]),
        // Backwards-compatible alias for the historical product name.
        .library(name: "NativeScriptSDK", targets: ["NativeScript", "TKLiveSync"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NativeScript",
            url: "\(releaseBase)/NativeScript.xcframework.zip",
            checksum: "6e39b9f08ac3b6744af9fdeb07da3ae4434eefd3e862e26453a085f9ac77aec2"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "aba324cab2b281131eff792448a8972b7799c1c94234b529bd97499781ec1b86"
        ),
    ]
)
