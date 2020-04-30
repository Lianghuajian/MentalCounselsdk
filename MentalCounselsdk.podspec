#
# Be sure to run `pod lib lint MentalCounselsdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MentalCounselsdk'
  s.version          = '1.0.0'
  s.summary          = 'Base sdk for project MentalCounsel.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A sdk for better develop the project MentalCounsel.
                       DESC

  s.homepage         = 'https://github.com/lianghuajian/MentalCounselsdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lianghuajian' => '624935495@qq.com' }
  s.source           = { :git => 'https://github.com/lianghuajian/MentalCounselsdk.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'MentalCounselsdk/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MentalCounselsdk' => ['MentalCounselsdk/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
