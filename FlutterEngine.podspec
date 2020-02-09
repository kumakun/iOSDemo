
Pod::Spec.new do |s|
    s.name             = 'FlutterEngine'
    s.version          = '0.1.0'
    s.summary          = 'XXXXXXX'
    s.description      = <<-DESC
测试Flutter混合开发
DESC
    s.homepage         = 'https://github.com/xx/FlutterEngine'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'chenhang' => 'hangisnice@gmail.com' }
    s.source       = { :git => "", :tag => "#{s.version}" }
    s.ios.deployment_target = '8.0'
    s.prepare_command       = <<-CMD
unzip FlutterEngine/App.framework -d FlutterEngine/App.framework
unzip FlutterEngine/Flutter.framework -d FlutterEngine/Flutter.framework
unzip FlutterEngine/FlutterPluginRegistrant.framework -d FlutterEngine/FlutterPluginRegistrant.framework
unzip FlutterEngine/svgaplayer_flutter.framework -d FlutterEngine/svgaplayer_flutter.framework
CMD
    s.ios.vendored_frameworks = 'FlutterEngine/App.framework', 'FlutterEngine/Flutter.framework', 'FlutterEngine/FlutterPluginRegistrant.framework', 'FlutterEngine/svgaplayer_flutter.framework'
  end
