Pod::Spec.new do |s|
    s.name             = "aws-crt-swift"
    s.version          = "1.0.0"
    s.summary          = "aws-crt-swift"
  
    s.description      = <<-DESC
                            podspec for aws-crt-swift 
                         DESC
  
    s.homepage         = "https://github.com/MRJYL/aws-crt-swift.git"
    s.license          = 'MIT'
    s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
    s.source           = { :git => "https://github.com/MRJYL/aws-crt-swift.git", :tag => s.version.to_s}
    
  
    s.module_name      = 'AwsCrtSwift'
    s.default_subspec  = 'aws-crt-swift'
    s.swift_versions = ['5']
  
    ios_deployment_target = '14.0'
    watchos_deployment_target = '4.0'
  
    s.ios.deployment_target = ios_deployment_target
    s.watchos.deployment_target = watchos_deployment_target
  
    s.subspec 'aws-crt-swift' do |ss|
      ss.subspec 'aws-common-runtime' do |sss|
        sss.source_files = 'ws-common-runtime/**/*.{c,h,m,swift}'
      end
      ss.subspec 'Source' do |sss|
        sss.source_files = 'Source/**/*.{c,h,m,swift}'
      end
    end
  end
