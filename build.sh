idebuildlocationstyle=$(defaults read com.apple.dt.Xcode IDEBuildLocationStyle)
echo $idebuildlocationstyle
defaults read com.apple.dt.Xcode IDEDerivedDataPathOverride
# /usr/bin/xcrun xcodebuild -showBuildSettings -json -workspace testXcodeBuild.xcworkspace -scheme testXcodeBuild  -derivedDataPath DerivedData >sett.json
# defaults export com.apple.dt.Xcode /Users/username/Downloads/testXcodeBuild/xxx3.plist
# /usr/bin/xcrun xcodebuild clean build -IDEBuildLocationStyle='Custom' -IDECustomBuildLocationType='Absolute' -IDECustomBuildIntermediatesPath='/Users/username/Desktop/Build22/Intermediates.noindex' -IDECustomBuildProductsPath='/Users/username/Desktop/Build22/Products' -skipUnavailableActions -workspace testXcodeBuild.xcworkspace -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -derivedDataPath DerivedData  -verbose 
/usr/bin/xcrun xcodebuild clean build ONLY_ACTIVE_ARCH=YES EXCLUDED_ARCHS='i386 arm64'\
 -skipUnavailableActions \
 -project Pods/Pods.xcodeproj \
 -scheme AFNetworking \
 -configuration Release \
 -derivedDataPath /Users/username/Downloads/testXcodeBuild/DerivedData \
 -destination 'generic/platform=com.apple.platform.iphonesimulator' \
 -verbose SYMROOT=buildSym OBJROOT=buildObj



 /usr/bin/xcrun xcodebuild clean archive \
 -skipUnavailableActions \
 -project Pods/Pods.xcodeproj \
 -scheme AFNetworking \
 -configuration Release \
 -derivedDataPath /Users/username/Downloads/testXcodeBuild/DerivedData \
 -destination 'generic/platform=iOS' \
 -verbose SYMROOT=buildSym OBJROOT=buildObj

 

# failed after add SYMROOT and OBJROOT 
#/usr/bin/xcrun xcodebuild clean build -skipUnavailableActions -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -workspace testXcodeBuild.xcworkspace -verbose SYMROOT=buildSym OBJROOT=buildObj

 # -IDEBuildLocationStyle='Custom' \
 # -IDECustomBuildLocationType='Absolute' \
 # -IDECustomBuildIntermediatesPath='/Users/username/Desktop/Build22/Intermediates.noindex' \
 # -IDECustomBuildProductsPath='/Users/username/Desktop/Build22/Products' \