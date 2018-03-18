if [ $TRAVIS_BRANCH = "master" ] && [ $TRAVIS_PULL_REQUEST == "false" ]; then
  fastlane ios build
  fastlane ios upload_metadata
  fastlane ios beta
else
  fastlane match appstore --verbose
fi
