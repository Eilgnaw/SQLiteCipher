// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SQLiteCipher",
    platforms: [
        .iOS(.v12), .watchOS(.v6),
    ],
    products: [
        .library(name: "SQLiteCipher", targets: ["SQLite", "SQLCipher"]),
    ],
    targets: [
        .binaryTarget(
            name: "SQLite",
            url: "https://github.com/Eilgnaw/SQLiteCipher/releases/download/0.14.1/SQLite.xcframework.zip",
            checksum: "ba497ab9ad8ef3eac4bdf4797830680dd3eb9a90fd3abd68c288cc36e755e737"
        ),

        .binaryTarget(
            name: "SQLCipher",
            url: "https://github.com/Eilgnaw/SQLiteCipher/releases/download/0.14.1/SQLCipher.xcframework.zip",
            checksum: "05752f9ca2919026907f1409c190f0e39060736da83dbe2f2043e19a854021e2"
        ),
    ]
)
