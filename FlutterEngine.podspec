
Pod::Spec.new do |s|
    s.name             = 'FlutterEngine'
    s.version          = '0.1.0'
    s.summary          = 'XXXXXXX'
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/xx/FlutterEngine'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'chenhang' => 'hangisnice@gmail.com' }
    s.source       = { :git => "", :tag => "#{s.version}" }
    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 'FlutterEngine/App.framework', 'FlutterEngine/Flutter.framework', 'FlutterEngine/FlutterPluginRegistrant.framework', 'FlutterEngine/svgaplayer_flutter.framework'
  end
