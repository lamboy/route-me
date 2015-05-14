Pod::Spec.new do |s|

  s.name         = 'route-me'
  s.version      = '0.0.1'
  s.summary      = 'A short description of route-me.'

  s.description  = <<-DESC
                   A longer description of route-me in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = 'http://github.com/lamboy/route-me'

  s.license      = 'MIT'
  s.author       = { 'JDHui' => 'jdheml@trgis.com' }

  s.platform              = :ios
  s.ios.deployment_target = '5.0'

  s.source       = { :git => 'https://github.com/lamboy/route-me.git', :tag => s.version.to_s }

  s.source_files  = 'Proj4/*.h', 'MapView/Map/*.{h,c,m}'
  s.requires_arc  = false
  s.requires_arc  = 'MapView/Map/RMShape.m'

  s.prefix_header_file = 'MapView/MapView_Prefix.pch'

  s.frameworks = 'CoreGraphics', 'CoreLocation', 'Foundation', 'QuartzCore', 'UIKit'

  s.libraries = 'Proj4', 'sqlite3'

  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/route-me/Proj4"' }

  s.preserve_paths = 'Proj4/libProj4.a', 'MapView/MapView.xcodeproj'

  s.dependency 'FMDB'
  s.dependency 'SMCalloutView'

end

