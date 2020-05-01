#
# Be sure to run `pod lib lint MentalCounselsdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  
  s.name             = 'MentalCounselsdk'
  
  s.version          = '1.0.1'
  
  s.summary          = 'Base sdk for project MentalCounsel.'
  
  s.description      = <<-DESC
  A sdk for better develop the project MentalCounsel.
                       DESC
  
  s.homepage         = 'https://github.com/lianghuajian/MentalCounselsdk'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.author           = { 'lianghuajian' => '624935495@qq.com' }
  
  s.source           = { :git => 'https://github.com/lianghuajian/MentalCounselsdk.git', :tag => s.version.to_s }
  
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'MentalCounselsdk/Classes/*.swift'
  
end
