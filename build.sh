idebuildlocationstyle=$(defaults read com.apple.dt.Xcode IDEBuildLocationStyle)
echo $idebuildlocationstyle
# /usr/bin/xcrun xcodebuild -showBuildSettings -json -workspace testXcodeBuild.xcworkspace -scheme testXcodeBuild  -derivedDataPath DerivedData >sett.json
# defaults export com.apple.dt.Xcode /Users/username/Downloads/testXcodeBuild/xxx3.plist
/usr/bin/xcrun xcodebuild clean build -IDEBuildLocationStyle='Unique' -skipUnavailableActions -workspace testXcodeBuild.xcworkspace -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -derivedDataPath DerivedData  -verbose 
# failed after add SYMROOT and OBJROOT 
#/usr/bin/xcrun xcodebuild clean build -skipUnavailableActions -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -workspace testXcodeBuild.xcworkspace -verbose SYMROOT=buildSym OBJROOT=buildObj


