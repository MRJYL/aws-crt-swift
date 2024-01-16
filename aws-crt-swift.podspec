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
      sss.source_files = 'aws-common-runtime/**/*.{c,h,m,swift}'
    end

    ss.subspec 'aws-c-auth' do |sss|
      sss.subspec 'source' do |ssss|
        ssss.source_files = 'aws-common-runtime/aws-c-auth/include/**/*.{c,h,m,swift}'
      end
      sss.subspec 'header' do |ssss|
        ssss.source_files = 'aws-common-runtime/source/**/*.{c,h,m,swift}'
      end
    end

    ss.subspec 'Source' do |sss|
      sss.source_files = 'Sources/**/*.{c,h,m,swift}'
    end
  end
end
