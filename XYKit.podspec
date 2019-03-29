
Pod::Spec.new do |s|
  s.name         = "XYKit"
  s.version      = "0.0.1"
  s.summary      = "A short description of XYKit."
  s.description  = "基础分类"
  s.homepage     = "https://github.com/yanmin7857/XYKitDemo"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "XYKit" => "475332065@qq.com" }
  s.source       = { :git => "https://github.com/yanmin7857/XYKitDemo.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "XYKit/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  s.platform     = :ios
end
