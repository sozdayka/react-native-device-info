require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNDeviceInfo"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['repository']['url']
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/react-native-community/react-native-device-info.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
    s.dependency 'React-Core'
  s.dependency 'React-Core/DevSupport'
  s.dependency 'React-Core/RCTWebSocket'
  s.dependency 'React-RCTActionSheet'
  s.dependency 'React-RCTBlob'
  s.dependency 'React-RCTLinking'
  s.dependency 'React-RCTNetwork'
  s.dependency 'React-RCTSettings'
  s.dependency 'React-RCTText'
  s.dependency 'React-RCTVibration'

  s.dependency 'React-cxxreact'
  s.dependency 'React-jsi'
  s.dependency 'React-jsiexecutor'
  s.dependency 'React-jsinspector'
  s.dependency 'Yoga'

  s.dependency 'DoubleConversion'
  s.dependency 'glog'
  s.dependency 'Folly'
end
