
Pod::Spec.new do |s|

  s.name         = "BetterSwift"
  s.version      = "0.0.2"
  s.summary      = "some extensions for swift"

  s.homepage     = "https://github.com/515783034/BetterSwift"
  s.license      = "MIT"
  s.author             = { "shmily" => "shmilyshijian@foxmail.com" }
  s.social_media_url   = "http://www.jianshu.com/u/3095a094665c"

  s.source       = { :git => "https://github.com/515783034/BetterSwift.git", :tag => "#{s.version}" }
  s.platform = :ios, "9.0"

  s.default_subspec = 'Core'

  s.subspec 'Core' do |co|
    co.source_files = "BetterSwift/Sources/**/*.swift"
  end

  s.subspec 'String' do |co|
    co.source_files = "BetterSwift/Sources/String/**/*.swift"
  end

end
