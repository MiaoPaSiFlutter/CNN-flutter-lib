#
# Be sure to run `pod lib lint CNN-flutter-lib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNN-flutter-lib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CNN-flutter-lib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MiaoPaSiFlutter/CNN-flutter-lib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuhui.Mr' => 'zhuyuhui434@gmail.com' }
  s.source           = { :git => 'https://github.com/MiaoPaSiFlutter/CNN-flutter-lib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CNN-flutter-lib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CNN-flutter-lib' => ['CNN-flutter-lib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
#  s.ios.vendored_frameworks = 'ios_frameworks/App.framework','ios_frameworks/Flutter.framework','ios_frameworks/FlutterPluginRegistrant.framework','ios_frameworks/Pods_Runner.framework','ios_frameworks/shared_preferences_ios.framework'

  p = Dir::open("ios_frameworks")
  arr = Array.new
  p.each do |f|
    if f == '.' || f == '..'
    else
      arr.push('ios_frameworks/'+f)
    end
  end
  s.ios.vendored_frameworks = arr


  
end
