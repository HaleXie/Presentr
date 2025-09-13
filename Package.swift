// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Presentr",
    platforms: [
        .iOS(.v16),
        .visionOS(.v2)
    ],
    products: [
        .library(
            name: "Presentr",
            targets: ["Presentr"]
        ),
    ],
    targets: [
        .target(
            name: "Presentr",
            dependencies: [],
            path: "Presentr",
            exclude: [
                "Info.plist",
                "Presentr.h"
            ],
            sources: [
                "AlertViewController.swift",
                "BackgroundView.swift",
                "CoverFromCornerAnimation.swift",
                "CoverHorizontalAnimation.swift",
                "CoverVerticalAnimation.swift",
                "CoverVerticalFromTopAnimation.swift",
                "CrossDissolveAnimation.swift",
                "FlipHorizontalAnimation.swift",
                "KeyboardTranslation.swift",
                "ModalCenterPosition.swift",
                "ModalSize.swift",
                "PresentationType.swift",
                "Presentr.swift",
                "Presentr+Equatable.swift",
                "PresentrAnimation.swift",
                "PresentrController.swift",
                "PresentrShadow.swift",
                "TransitionType.swift"
            ],
            resources: [
                .process("AlertViewController.xib"),
                .process("Montserrat-Regular.ttf"),
                .process("SourceSansPro-Regular.ttf")
            ],
            swiftSettings: [
                .swiftLanguageMode(.v5)
            ]
        ),
        .testTarget(
            name: "PresentrTests",
            dependencies: ["Presentr"],
            path: "PresentrTests",
            exclude: [
                "Info.plist"
            ]
        ),
    ],
    swiftLanguageModes: [.v5]        
)
