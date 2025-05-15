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
    .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.1"),
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "6.3.1-release.2"),
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
        "MetaAdapter",
        "PangleAdapter",
        "MintegralAdapter",
        "IronSourceAdapter",
        "UnityAdapter",
        "LiftoffAdapter",
        "MetaSDK",
        "MTGSDK",
        "MTGSDKBanner",
        "MTGSDKBidding",
        "MTGSDKCNAddition",
        "MTGSDKInterstitial",
        "MTGSDKInterstitialVideo",
        "MTGSDKNativeAdvanced",
        "MTGSDKNewInterstitial",
        "MTGSDKReward",
        "MTGSDKSplash",
        "IronSource",
        "Unity",
        "Liftoff",
      ]
    ),
    // Adapter
    .binaryTarget(
      name: "GoogleAdapter",
      path: "Sources/GoogleAdapter/AppLovinMediationGoogleAdapter.xcframework"
    ),
    .binaryTarget(
      name: "MetaAdapter",
      path: "Sources/MetaAdapter/AppLovinMediationFacebookAdapter.xcframework"
    ),
    .binaryTarget(
      name: "PangleAdapter",
      path: "Sources/PangleAdapter/AppLovinMediationByteDanceAdapter.xcframework"
    ),
    .binaryTarget(
      name: "MintegralAdapter",
      path: "Sources/MintegralAdapter/AppLovinMediationMintegralAdapter.xcframework"
    ),
    .binaryTarget(
      name: "IronSourceAdapter",
      path: "Sources/IronSourceAdapter/AppLovinMediationIronSourceAdapter.xcframework"
    ),
    .binaryTarget(
      name: "LiftoffAdapter",
      path: "Sources/LiftoffAdapter/AppLovinMediationVungleAdapter.xcframework"
    ),
    .binaryTarget(
      name: "UnityAdapter",
      path: "Sources/UnityAdapter/AppLovinMediationUnityAdsAdapter.xcframework"
    ),
    // SDK
    .binaryTarget(
      name: "MetaSDK",
      path: "Sources/MetaSDK/FBAudienceNetwork.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDK",
      path: "Sources/MintegralAdapter/MTGSDK.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKBanner",
      path: "Sources/MintegralAdapter/MTGSDKBanner.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKBidding",
      path: "Sources/MintegralAdapter/MTGSDKBidding.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKCNAddition",
      path: "Sources/MintegralAdapter/MTGSDKCNAddition.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKInterstitial",
      path: "Sources/MintegralAdapter/MTGSDKInterstitial.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKInterstitialVideo",
      path: "Sources/MintegralAdapter/MTGSDKInterstitialVideo.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKNativeAdvanced",
      path: "Sources/MintegralAdapter/MTGSDKNativeAdvanced.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKNewInterstitial",
      path: "Sources/MintegralAdapter/MTGSDKNewInterstitial.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKReward",
      path: "Sources/MintegralAdapter/MTGSDKReward.xcframework"
    ),
    .binaryTarget(
      name: "MTGSDKSplash",
      path: "Sources/MintegralAdapter/MTGSDKSplash.xcframework"
    ),
    .binaryTarget(
      name: "IronSource",
      path: "Sources/IronSourceAdapter/IronSource.xcframework"
    ),
    .binaryTarget(
      name: "Unity",
      path: "Sources/UnityAdapter/UnityAds.xcframework"
    ),
    .binaryTarget(
      name: "Liftoff",
      path: "Sources/LiftoffAdapter/VungleAdsSDK.xcframework"
    ),
  ]
)
