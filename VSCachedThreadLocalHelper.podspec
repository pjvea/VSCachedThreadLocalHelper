Pod::Spec.new do |s|
  s.name             = 'VSCachedThreadLocalHelper'
  s.version          = '0.1.0'
  s.summary          = 'VSCachedThreadLocalHelper is a helper class that creates cached thread local objects.'
  s.description      = <<-DESC
VSCachedThreadLocalHelper is a helper class that creates cached thread local objects. It is most commonly used for DateFormatters. That way your DateFormatters don't have to be reallocated every time you want to use them.
                       DESC

  s.homepage         = 'https://github.com/pjvea/VSCachedThreadLocalHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pjvea' => 'pj@veasoftware.com' }
  s.source           = { :git => 'https://github.com/pjvea/VSCachedThreadLocalHelper.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pjvea'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.xcconfig = { 'SWIFT_VERSION' => '4.0' }
  
  s.source_files = 'VSCachedThreadLocalHelper/Classes/**/*'
  s.frameworks = 'Foundation'
  
  # s.resource_bundles = {
  #   'VSCachedThreadLocalHelper' => ['VSCachedThreadLocalHelper/Assets/*.png']
  # }
end
