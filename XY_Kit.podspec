Pod::Spec.new do |s|

  s.name         = "XY_Kit"
  s.version      = "0.0.3"
  s.summary      = "基础分类及路由分类"
  s.description  = <<-DESC
  基础分类及路由分类 页面跳转再也不需要引入文件啦！
                   DESC

  s.homepage     = "https://github.com/yanmin7857/XYKitDemo"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "XY_Kit" => "475332065@qq.com" }
  s.source       = { :git => "https://github.com/yanmin7857/XYKitDemo.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "XYKit/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  s.platform     = :ios
  s.dependency 'MGJRouter'
  s.prefix_header_contents =
    '#import "MGJRouter.h"'
end
