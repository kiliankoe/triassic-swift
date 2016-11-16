#
# Be sure to run `pod lib lint Triassic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Triassic'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Triassic.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kiliankoe/Triassic'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kilian Koeltzsch' => 'me@kilian.io' }
  s.source           = { :git => 'https://github.com/kiliankoe/Triassic.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kiliankoe'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Triassic/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Triassic' => ['Triassic/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
