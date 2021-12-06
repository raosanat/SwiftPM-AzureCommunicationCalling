// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "AzureCommunicationCalling", targets: ["AzureCommunicationCalling"])
    ],
    dependencies: [
        .package(name: "AzureCommunicationCommon", url: "https://github.com/Azure/SwiftPM-AzureCommunicationCommon.git", from: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            dependencies: ["AzureCommunicationCommon"],
            url: "https://github.com/Azure/communication/releases/download/v2.2.0-beta.1/AzureCommunicationCalling-2.2.0-beta.1.zip",
            checksum: "3dfc0b9e1ae79e1d8df622f39b1c85db8998518d2c02eb1fe6b9ae58333c6de9"
        )
    ]
)

