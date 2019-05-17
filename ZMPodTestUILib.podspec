#
# Be sure to run `pod lib lint ZMPodTestUILib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZMPodTestUILib'
  s.version          = '0.1.5'
  s.summary          = '我的测试pod组件 ZMPodTestUILib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lucking/ZMPodTestUILib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lucking' => '1531073749@qq.com' }
  s.source           = { :git => 'https://github.com/lucking/ZMPodTestUILib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # pod 库的本地路劲
  # s.source_files = 'ZMPodTestUILib/Classes/**/*'
  # s.source_files = 'ZMTestKit'
  s.source_files = 'ZMTestKit/**/*.{h,m}'

  # s.resource_bundles = {
  #   'ZMPodTestUILib' => ['ZMPodTestUILib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'    # 只公开头文件
  # s.frameworks = 'UIKit', 'MapKit'                # 填写依赖官方的组件
  # s.dependency 'AFNetworking', '~> 2.3'           # 依赖库
end
