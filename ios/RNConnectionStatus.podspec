
Pod::Spec.new do |s|
  s.name         = "RNConnectionStatus"
  s.version      = "1.0.0"
  s.summary      = "RNConnectionStatus"
  s.description  = <<-DESC
                  RNConnectionStatus
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNConnectionStatus.git", :tag => "master" }
  s.source_files  = "RNConnectionStatus/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  