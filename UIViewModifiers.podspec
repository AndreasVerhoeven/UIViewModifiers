Pod::Spec.new do |s|
    s.name             = 'UIViewModifiers'
    s.version          = '1.0.0'
    s.summary          = 'Initialize UIView properties inline'
    s.homepage         = 'https://github.com/AndreasVerhoeven/UIViewModifiers'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Andreas Verhoeven' => 'cocoapods@aveapps.com' }
    s.source           = { :git => 'https://github.com/AndreasVerhoeven/UIViewModifiers.git', :tag => s.version.to_s }
    s.module_name      = 'UIViewModifiers'

    s.swift_versions = ['5.0']
    s.ios.deployment_target = '11.0'
    s.source_files = 'Sources/*.swift'
end
