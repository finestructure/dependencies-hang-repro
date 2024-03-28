// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "hang-repro",
    platforms: [.macOS(.v12)],
    dependencies: [
        .package(url: "https://github.com/SwiftPackageIndex/DocUploader.git", exact: "1.6.1"),
    ],
    targets: [
        .executableTarget(name: "hang-repro", dependencies: [
            .product(name: "DocUploadBundle", package: "DocUploader")
        ]),
    ]
)
