Pod::Spec.new do |spec|
  spec.name = 'follyJM'
  spec.version = '2018.10.22.00-alpha'
  spec.license = { :type => 'Apache License, Version 2.0' }
  spec.homepage = 'https://github.com/JimiPlatform/folly'
  spec.summary = 'folly for iOS ReactNative'
  spec.authors = 'Jimi', 'Facebook'

  spec.source = { :git => 'https://github.com/JimiPlatform/folly.git', :branch => 'dev', :tag => "#{spec.version}" }
  spec.libraries           = "stdc++"
  spec.compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1'

  spec.platform = :ios, "9.0"
  spec.xcconfig = { 'VALID_ARCHS' => 'armv7s armv7 x86_64 arm64 arm64e' }
  spec.dependency 'glogJM', '0.3.5-alpha'
  spec.dependency 'DoubleConversionJM', '1.1.6-alpha'
  spec.dependency 'boost-for-react-native', '1.63.0'
  spec.ios.vendored_frameworks = 'folly.framework'

end


#校验指令
#pod lib lint follyJM.podspec --verbose --allow-warnings --use-libraries
#发布命令
#pod trunk push follyJM.podspec --verbose --allow-warnings --use-libraries
