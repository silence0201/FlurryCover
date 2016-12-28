Pod::Spec.new do |s|
  s.name         = "FlurryCover"
  s.version      = "1.0"
  s.summary      = "drop down fluzzy header"
  s.description  = <<-DESC
                    this project provide a method to drop down fluzzy header
                   DESC
  s.homepage     = "https://github.com/silence0201/FlurryCover"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios
  s.platform     = :ios, "7.0"
  s.source       = { :git => "htpod tps://github.com/silence0201/FlurryCover.git", :tag => "1.0" }
  s.source_files  = "FlurryCover", "FlurryCover/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.public_header_files = "FlurryCover/*.h"
  s.requires_arc = true
end
