Pod::Spec.new do |s|

  s.name         = "XY_Kit"
  s.version      = "0.0.1"
  s.summary      = "通过为UIFontDescriptor添加category方法实现动态改变指定控件（如UILabel UIButtonLabel等）的字体大小。"
  s.description  = <<-DESC
  通过为UIFontDescriptor添加category方法实现动态改变指定控件（如UILabel UIButtonLabel等）的字体大小!!!
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
  s.framework = 'MGJRouter'
end
