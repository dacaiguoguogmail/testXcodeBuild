#/usr/bin/xcrun xcodebuild clean build -skipUnavailableActions -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -workspace testXcodeBuild.xcworkspace -verbose

# failed after add SYMROOT and OBJROOT 
/usr/bin/xcrun xcodebuild clean build -skipUnavailableActions -scheme testXcodeBuild -configuration Release -destination 'generic/platform=iOS' -workspace testXcodeBuild.xcworkspace -verbose SYMROOT=buildSym OBJROOT=buildObj


