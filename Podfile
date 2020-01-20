# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'



target 'iOSDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for iOSDemo
  
  
  case ENV['PODFILE_TYPE']
  when 'development'
#  使用下面的命令集成本地的 Flutter Module 项目
#  env PODFILE_TYPE=development pod install
  flutter_application_path = '../flutter_library'
  load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
  install_all_flutter_pods(flutter_application_path)
#    pod 'Then'
  else
# 使用 pod install 则会集成已经编译好的framework
  pod 'FlutterEngine', :path => './'
#    pod 'Then', :path => './'
  end

  target 'iOSDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'iOSDemoUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
#      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
#      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
#      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
    end
  end

  installer.pods_project.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
#      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
#      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
#      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
  end

end
