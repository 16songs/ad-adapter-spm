// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AdAdapters",
  platforms: [
    .iOS(.v15),
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "AdAdapters",
      targets: [
        "AdAdapters",
      ]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "13.2.0"),
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "7.9.1-release.1"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "AdAdapters",
      dependencies: [
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
        .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
        "GoogleAdapter",
        "MolocoAdapter",
        "PangleAdapter",
        "UnityAdapter",
        "LiftoffAdapter",
        "InMobiAdapter",
        "Moloco",
        "Unity",
        "Liftoff",
        "InMobiSDK"
      ]
    ),
    // Adapter
    .binaryTarget(
      name: "GoogleAdapter",
      path: "Sources/GoogleAdapter/AppLovinMediationGoogleAdapter.xcframework"
    ),
    .binaryTarget(
      name: "PangleAdapter",
      path: "Sources/PangleAdapter/AppLovinMediationByteDanceAdapter.xcframework"
    ),
    .binaryTarget(
      name: "LiftoffAdapter",
      path: "Sources/LiftoffAdapter/AppLovinMediationVungleAdapter.xcframework"
    ),
    .binaryTarget(
      name: "UnityAdapter",
      path: "Sources/UnityAdapter/AppLovinMediationUnityAdsAdapter.xcframework"
    ),
    .binaryTarget(
      name: "MolocoAdapter",
      path: "Sources/MolocoAdapter/AppLovinMediationMolocoAdapter.xcframework"
    ),
    .binaryTarget(
      name: "InMobiAdapter",
      path: "Sources/InMobiAdapter/AppLovinMediationInMobiAdapter.xcframework"
    ),
    .binaryTarget(
      name: "Unity",
      path: "Sources/UnityAdapter/UnityAds.xcframework"
    ),
    .binaryTarget(
      name: "Moloco",
      path: "Sources/MolocoAdapter/MolocoSDK.xcframework"
    ),
    .binaryTarget(
      name: "Liftoff",
      path: "Sources/LiftoffAdapter/VungleAdsSDK.xcframework"
    ),
    .binaryTarget(
      name: "InMobiSDK",
      path: "Sources/InMobiAdapter/InMobiSDK.xcframework"
    ),
  ]
)
