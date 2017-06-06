platform :ios,'9.0'
use_frameworks!

def install_pods
  pod 'Alamofire', '4.0.1'
  pod 'SDWebImage'
  pod 'SVProgressHUD'
  pod 'MMDrawerController', '~> 0.5.7'
  pod 'SwiftDate', '4.0.13'
  pod 'KeychainAccess', '3.0.0'
  pod 'KYDrawerController'
end

target 'SampleApp' do
    install_pods
end

#target 'SampleAppTests' do
#    install_pods
#end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      config.build_settings['SWIFT_VERSION'] = "3.0"
      config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'NO'
    end
  end
end
