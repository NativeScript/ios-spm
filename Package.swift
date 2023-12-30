// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NativeScriptSDK",
    platforms: [
        .iOS(.v13)  // or whichever minimum version you target
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NativeScriptSDK",
            targets: ["NativeScriptSource", "NativeScript"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NativeScript",
            path: "NativeScript.xcframework"
        ),
        .target(
            name: "NativeScriptSource", // This is your new source target
            dependencies: ["NativeScript"], // It depends on the binary target
            path: "Sources/NativeScriptSource", // This assumes you've added your Obj-C files in this directory
            publicHeadersPath: ".", // Expose all headers in the directory as public
            cSettings: [
                .headerSearchPath(".") // Specify the path to your Objective-C files
            ]
        )
    ]
)
