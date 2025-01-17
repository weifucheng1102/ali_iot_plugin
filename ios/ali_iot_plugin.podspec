#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ali_iot_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ali_iot_plugin'
  s.version          = '0.0.1'
  s.summary          = '阿里飞燕平台 Flutter plugin.'
  s.description      = <<-DESC
提供阿里飞燕生活物联网平台的Flutter插件.
                       DESC
  s.homepage         = 'https://github.com/cat-x/ali_iot_plugin'
  s.license          = {  :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'CiYuan Cat-x' => 'a599231042@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.documentation_url = 'https://pub.dev/packages/ali_iot_plugin'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'


  # s.frameworks = 'UIKit', 'Foundation'
  s.static_framework = true # 是否包含静态库框架（注意：不能写在subspec子模块中）
  
  # 依赖关系,该项目所依赖的其他库,如果有多个需要填写多个s.dependency
  # # github 官方 pod 源
  # source 'https://github.com/CocoaPods/Specs.git' 

  # # 阿里云 pod 源
  # source 'https://github.com/aliyun/aliyun-specs.git'
  
  s.subspec 'ALiIM' do |ss|  
    # #初始化Smart
    # ss.dependency 'IMSIotSmart', '1.2.9'
      
    # # OA
    # ss.dependency 'AlicloudALBBOpenAccount', '3.4.1.6'
    
    # #facebook依赖
    # ss.dependency 'FBSDKLoginKit', '4.29.0'
    # ss.dependency 'FBSDKCoreKit', '4.29.0'
    # #google依赖:cocoapods 大于1.2.0版本,请注释 ToolboxForMac 和 GTMOAuth2 即可编辑通过
    # ss.dependency 'GoogleSignIn', '4.0.2'
    # #pod 'ToolboxForMac', :path => 'LocalPods/ToolboxForMac.podspec'
    # #pod 'GTMOAuth2', '1.1.4'
    # ss.dependency 'IMSAccount', '1.2.1.4'

    
    # # 长连接
    # ss.dependency 'IMSMobileChannel', '1.6.12'
    
    # # API 通道
    # ss.dependency 'IMSApiClient', '1.6.9'
    
    # # 用户统一身份认证
    # ss.dependency 'IMSAuthentication', '1.4.4'
    
    # # 移动推送:1.9.5.5 适配iOS13
    # ss.dependency 'AlicloudPushIoT', '1.9.5.5'
    # # s.dependency 'AlicloudPushIoT', '1.9.5.5-noccp'

    # # 专有云推送
    # ss.dependency 'IMSPCloudPush', '1.0.2'
    # ss.dependency 'IMSPCloudNetwork', '1.0.0'
    
    # # BoneMoible 容器
    # ss.dependency 'IMSBoneKit', '1.3.11.11'
    # ss.dependency 'IMSReactNativeExtension', '1.0.2'
    # ss.dependency 'AKReactNative', '0.59.9.2'
    # ss.dependency 'MJRefresh', '3.1.15'
    # ss.dependency 'ZipArchive', '1.4.0'
    
    # #设备模型
    # ss.dependency 'IMSThingCapability', '1.8.10'
    # ss.dependency 'IMSBreezeSDK', '1.7.4'
    # ss.dependency 'AKTBJSONModel', '~> 1.0.0'
    
    # # 蓝牙
    # ss.dependency 'IMSOtaBusinessSdk', '1.6.3'
    
    # #配网
    # ss.dependency 'IMSDeviceCenter', '1.12.9'
    # ss.dependency 'CocoaAsyncSocket', '7.4.2'
    # ss.dependency 'Reachability', '3.2'
    # ss.dependency 'IMSDeviceGateway', '1.6.8'

    # # 其他外部第三方库
    # ss.dependency 'SDWebImage', '5.4.0'
    # ss.dependency 'Mantle', '2.1.0'

    # # 阿里插件多余的
    # ss.dependency 'AlicloudSecurityGuardSDK', '5.5.999'
    # ss.dependency 'AlicloudSGSecurityBody', '5.5.999'
    # ss.dependency 'AlicloudSGMain', '5.5.999'
  ss.dependency 'IMSApiClient', '1.6.9'
  ss.dependency 'IMSAuthentication', '1.4.5'
  ss.dependency 'IMSIotSmart', '1.3.8.17'
  ss.dependency 'AlicloudSecurityGuardSDK', '5.5.51'
  ss.dependency 'AlicloudSGSecurityBody', '5.5.60'
  ss.dependency 'AlicloudSGMain', '5.5.51'
  ss.dependency 'IMSAccount', '1.2.1.5'
  ss.dependency 'AlicloudALBBOpenAccount', '3.4.1.5'
  ss.dependency 'IMSThingCapability', '1.10.1'
  ss.dependency 'IMSMobileChannel', '1.6.12'
  ss.dependency 'IMSBoneKit', '1.3.11.11'
  ss.dependency 'AKReactNative', '0.59.9.2'
  ss.dependency 'MJRefresh', '3.1.15'
  ss.dependency 'ZipArchive', '1.4.0'
  ss.dependency 'IMSReactNativeExtension', '1.0.2'
  ss.dependency 'IMSDeviceCenter', '1.15.3'
  ss.dependency 'CocoaAsyncSocket', '7.4.2'
  ss.dependency 'Reachability', '3.2'
  ss.dependency 'IMSBreezeSDK', '1.7.7'
  ss.dependency 'IMSOtaBusinessSdk', '1.6.3'
  ss.dependency 'IMSDeviceGateway', '1.6.8'
  end

  # 转换速度快、使用简单方便的字典转模型框架
  s.dependency 'MJExtension'

end
