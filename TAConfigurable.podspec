Pod::Spec.new do |s|
    s.name     = 'TAConfigurable'
    s.version  = '1.0.0'
    s.ios.deployment_target = '10.0'
    s.tvos.deployment_target = '10.0'
    s.homepage     = 'https://www.tailored-apps.com/'
    s.license      = 'MIT'
    s.summary  = 'Configurable is an option to create views with a default init closure, to minimize the code for example creating and defining an object.'
    s.requires_arc = true
    s.source = {
      :git => 'https://github.com/tailoredmedia/TAConfigurable.git',
      :tag => s.version
    }
    s.swift_version = '5.0'
    s.author = {
        'Tailored Apps' => 'apple@tailored-apps.com'
    }

    s.source_files = 'TAConfigurable/**/*.swift'

    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'TAConfigurableTests/**/*.swift'
    end
end
