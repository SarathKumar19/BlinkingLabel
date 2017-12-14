#
# Be sure to run `pod lib lint BlinkingLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BlinkingLabel'
  s.version          = '0.1.0'
  s.summary          = 'A subclass on UILabel that provides a nice blink feature.'

  s.description      = <<-DESC
                        This Pod provides 'blink' feature for a UILabel whose state can be toggled to start or stop blinking.
                       DESC

  s.homepage         = 'https://github.com/SarathKumar19/BlinkingLabel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SarathKumar19' => 'g.sarathkumarphoenix@gmail.com' }
  s.source           = { :git => 'https://github.com/SarathKumar19/BlinkingLabel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'BlinkingLabel/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BlinkingLabel' => ['BlinkingLabel/Assets/*.png']
  # }
end
