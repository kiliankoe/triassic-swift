Pod::Spec.new do |s|
  s.name    = "Triassic"
  s.version = "0.1.0"

  s.summary     = "Swift TRIAS client library"
  s.description = <<-DESC
Triassic is a client library for TRIAS public transport systems for use in Swift codebases. Very WIP at the moment.
  DESC

  s.homepage         = "https://github.com/triassic-park/triassic-swift"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Kilian Koeltzsch" => "me@kilian.io" }
  s.source           = { :git => "https://github.com/triassic-park/triassic-swift.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/kiliankoe"

  s.ios.deployment_target     = "8.0"
  s.osx.deployment_target     = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target    = "9.0"

  s.source_files = "Sources/**/*"
  # s.frameworks = "Foundation"

  s.dependency 'AEXML', '~> 4.0'
end
