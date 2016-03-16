#
# Be sure to run `pod lib lint PQActionSheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PQActionSheet"
  s.version          = "0.1.1"
  s.summary          = "仿微信的ActionSheet，比UIActionSheet用法更简便。"


  s.homepage         = "https://github.com/docee/PQActionSheet"
  s.license          = 'MIT'
  s.author           = { "docee" => "docee@163.com" }
  s.source           = { :git => "https://github.com/docee/PQActionSheet.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'PQActionSheet/*'

  s.public_header_files = 'PQActionSheet/*.h'
  s.frameworks = 'UIKit','Foundation'
end
