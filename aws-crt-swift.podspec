Pod::Spec.new do |s|
  s.name             = "aws-crt-swift"
  s.version          = "1.0.0"
  s.summary          = "aws-crt-swift"
  s.description      = <<-DESC
                          podspec for aws-crt-swift 
                       DESC
  s.homepage         = "https://github.com/MRJYL/aws-crt-swift.git"
  s.author           = { "yulong" => "yulong.jin@okg.com" }
  s.source           = { :git => "https://github.com/MRJYL/aws-crt-swift.git", :tag => s.version.to_s}
  s.platform     = :ios, "14.0"

  s.subspec 'aws-common-runtime' do |ss|
    ss.source_files = 'aws-common-runtime/**/*.{c,h,m,swift}'
    ss.dependency 'aws-c-auth'
  end
  s.subspec 'Source' do |ss|
    ss.source_files = 'Source/**/*.{c,h,m,swift}'
  end
end
