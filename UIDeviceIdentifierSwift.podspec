Pod::Spec.new do |s|
  s.name         = "UIDeviceIdentifierSwift"
  s.version      = "1.0."
  s.summary      = "UIDeviceIdentifierSwift return name device."
  s.homepage     = "https://github.com/tiwas/UIDeviceIdentifierSwift"
  s.license      = 'MIT'
  s.authors      = [ "Andres ORTIZ" ]
  s.source       = { :git => "https://github.com/tiwas/UIDeviceIdentifierSwift.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = "source/*.swift"
end
