#
# Be sure to run `pod lib lint XHCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XHCategory'
  s.version          = '0.1.3'
  s.summary          = 'XHCategory.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
#TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://stonewin540.synology.me:10080/specs/xhcategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuanhao' => 'stonewin540@icloud.com' }
  s.source           = { :git => 'ssh://git@stonewin540.synology.me:10022/specs/xhcategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'XHCategory/Classes/*'
  s.public_header_files = 'XHCategory/Classes/*.h'
  
  # s.resource_bundles = {
  #   'XHCategory' => ['XHCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'XHCGCategory' do |ss|
    ss.source_files = 'XHCategory/Classes/XHCGCategory/**/*'
    ss.public_header_files = 'XHCategory/Classes/XHCGCategory/*.h'
  end
  
  s.subspec 'XHNSCategory' do |ss|
    ss.source_files = 'XHCategory/Classes/XHNSCategory/**/*'
    ss.public_header_files = 'XHCategory/Classes/XHNSCategory/*.h'
  end
  
  s.subspec 'XHUICategory' do |ss|
    ss.source_files = 'XHCategory/Classes/XHUICategory/**/*'
    ss.public_header_files = 'XHCategory/Classes/XHUICategory/*.h'
  end
end
