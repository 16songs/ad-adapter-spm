// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AdAdapters",
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
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "AdAdapters",
      dependencies: [
        "GoogleAdapter",
        "MetaAdapter",
        "PangleAdapter",
        "MintegralAdapter",
        "IronSourceAdapter",
      ],
      linkerSettings: [
        .linkedFramework("AdSupport"),
        .linkedFramework("AppTrackingTransparency"),
        .linkedFramework("AudioToolbox"),
        .linkedFramework("AVFoundation"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreMedia"),
        .linkedFramework("CoreMotion"),
        .linkedFramework("CoreTelephony"),
        .linkedFramework("Foundation"),
        .linkedFramework("MessageUI"),
        .linkedFramework("SafariServices"),
        .linkedFramework("StoreKit"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("UIKit"),
        .linkedFramework("WebKit"),

        .linkedLibrary("z"),

        // NOTE: Swift Package Manager currently does not allow dependencies with unsafeFlags, unless a specific branch/commit is used.
        // For now, these flags should be added manually to the project for integration.
         .unsafeFlags(["-ObjC"])
      ]
    ),
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
  ]
)
