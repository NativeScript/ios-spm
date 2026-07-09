// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
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

let nsVersion = "9.1.0-alpha.15"
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
            checksum: "efb85a5d906d37bfc4e7fa946024f90ae34fd647fbac58100ad1e52618b825d5"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "bb10d3d1726a64d1153abd373f8362fa317a62c91e38e2aaf712619f16be5618"
        ),
        .binaryTarget(
            name: "NativeScriptVisionOS",
            url: "\(releaseBase)/NativeScript.visionos.xcframework.zip",
            checksum: "34040bad934fba7262c90ecce3dea3538c7bf192fb0de9e8721eda2656cb7711"
        ),
        .binaryTarget(
            name: "TKLiveSyncVisionOS",
            url: "\(releaseBase)/TKLiveSync.visionos.xcframework.zip",
            checksum: "6909897f814d52969ec7c77c1769a3e2f0b36f4d3a954cf9dcc49c4bba3b0d02"
        ),
    ]
)
