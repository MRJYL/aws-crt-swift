Pod::Spec.new do |s|
    s.name             = "aws-crt-swift"
    s.version          = "1.0."
    s.summary          = "aws-crt-swift"
  
    s.description      = <<-DESC
    aws-crt-swift
                         DESC
  
    s.homepage         = "https://github.com/MRJYL/aws-crt-swift.git"
    s.license          = 'MIT'
    s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
    s.source           = { :git => "hhttps://github.com/MRJYL/aws-crt-swift.git", :tag => s.version.to_s }
    
  
    s.module_name      = 'aws-crt-swift'
    s.default_subspec  = 'standard'
    s.swift_versions = ['5']
  
    ios_deployment_target = '14.0'
    watchos_deployment_target = '4.0'
  
    s.ios.deployment_target = ios_deployment_target
    s.watchos.deployment_target = watchos_deployment_target
  
    s.subspec 'standard' do |ss|
      ss.source_files = 'Sources/**/*.{c,h,m,swift}'
      ss.exclude_files = 'Sources/**/Cipher.swift'
    end
  end
