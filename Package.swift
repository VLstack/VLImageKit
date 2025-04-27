// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "VLImageKit",
                      platforms: [ .macOS(.v13), .iOS(.v15) ],
                      products:
                      [
                       .library(name: "VLImageKit",
                                targets: [ "VLImageKit" ])
                      ],
                      targets:
                      [
                       .target(name: "VLImageKit")
                      ])
