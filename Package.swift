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

let nsVersion = "9.1.0-alpha.16"
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
            checksum: "e22a83aa0b4342961d948a9878d4740cc85b4f9248eab23b9c66169e8411aa1f"
        ),
        .binaryTarget(
            name: "TKLiveSync",
            url: "\(releaseBase)/TKLiveSync.xcframework.zip",
            checksum: "e6990a8b9368fca9766dd45f8b4f52151012c5fcafdf728687491afcc584f0fe"
        ),
        .binaryTarget(
            name: "NativeScriptVisionOS",
            url: "\(releaseBase)/NativeScript.visionos.xcframework.zip",
            checksum: "10b3a18e443b48f205565d1109423142d0b2a43b8a95b9958fae63f6261b20de"
        ),
        .binaryTarget(
            name: "TKLiveSyncVisionOS",
            url: "\(releaseBase)/TKLiveSync.visionos.xcframework.zip",
            checksum: "f3290bad7c099ff8b67fff7811e757c7c8b4689f78468df67d3bccb4d18a05af"
        ),
    ]
)
