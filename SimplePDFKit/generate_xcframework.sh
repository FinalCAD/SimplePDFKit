#!/usr/bin/env bash

# Build for iOS devices, iOS simulator and macOS
xcodebuild archive -scheme SimplePDFKit -arch arm64 -archivePath "build/ios.xcarchive" -sdk iphoneos SKIP_INSTALL=NO
xcodebuild archive -scheme SimplePDFKit -arch x86_64 -archivePath "build/ios_sim.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO

# Create XCFramework
xcodebuild -create-xcframework -framework "build/ios.xcarchive/Products/Library/Frameworks/SimplePDFKit.framework" -framework "build/ios_sim.xcarchive/Products/Library/Frameworks/SimplePDFKit.framework" -output "artifact/SimplePDFKit.xcframework"
