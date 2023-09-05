#
#  Be sure to run `pod spec lint LPUnionPay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "UPAPayPluginLib"
  s.version      = "1.7.0"
  s.summary      = "UPAPayPluginLib"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  银联Apple Pay手机支付控件
                   DESC

  s.homepage     = "https://github.com/yhrun/UPAPayPluginLib"
 

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "yhrun" => "yhruner@gmail.com" }

  s.ios.deployment_target = "9.0"


  s.source       = { :git => "https://github.com/yhrun/UPAPayPluginLib.git", :tag => "#{s.version}" }


  s.source_files  =  "inc/**/*.{h,m}"


  s.frameworks = "Foundation", "UIKit", "CFNetwork", "SystemConfiguration", "PassKit"
  s.libraries = "z", "stdc++"
  s.vendored_libraries = "libs/libUPAPayPlugin.a"

  # 避免m1电脑pod trunk push的时候报错
  # https://github.com/CocoaPods/CocoaPods/issues/10065
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end