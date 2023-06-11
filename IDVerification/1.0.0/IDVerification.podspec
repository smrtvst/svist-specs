Pod::Spec.new do |s|
    s.name         = "IDVerification"
    s.version      = "1.0.0"
    s.summary      = "A brief description of IDVerify project."
    s.description  = <<-DESC
    An extended description of IDVerify project.
    DESC
    s.homepage     = "https://drive.google.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to Smartvist Ltd.
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/smrtvst/IDVerify.git", :tag => "#{s.version}" }
    s.vendored_frameworks = "IDVerification.xcframework"
    s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64' }
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '11.0'
end
