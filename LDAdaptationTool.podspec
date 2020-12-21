

Pod::Spec.new do |spec|

  spec.name         = "LDAdaptationTool"
  spec.version      = "0.0.5"
  spec.summary      = "UI、系统适配工具：LDAdaptationTool 、APP与手机系统的相关信息"

  spec.description  = <<-DESC
                      UI、系统适配工具：LDAdaptationTool
                   DESC

  spec.homepage     = "https://github.com/Sanchain/LDAdaptationTool"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "Sanchain" => "954598055@qq.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/Sanchain/LDAdaptationTool.git", :tag => "#{spec.version}" }
  # spec.source_files  = "LDMediaWidget/VideoParser/*", "LDMediaWidget/VideoTranscode/*"
  spec.source_files  = "LDAdaptationToolDemo/LDAdaptationTool/*.{h,m}"

  spec.requires_arc = true
  #spec.pod_target_xcconfig = { 'skip_validation' => true }

  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # 依赖库
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
  # 依赖第三方库
  # spec.dependency "YTKKeyValueStore", "~> 0.1"


end
