Pod::Spec.new do |spec|

  spec.name         = "R.swift.Library"
  spec.version      = ENV['POD_VERSION']
  spec.license      = "MIT"

  spec.summary      = "Companion library for R.swift, featuring types used to type resources"
  spec.description  = <<-DESC
                   This library contains types used by the `R.generated.swift` file that is normally generated by R.swift. R.swift depends on this pod to include some types and other libraries can use this project to extend R.swift types.

                   R.swift is a tool to get strong typed, autocompleted resources like images, fonts and segues in Swift projects.
                   DESC
  spec.homepage     = "https://github.com/mac-cain13/R.swift.Library"

  spec.author             = { "Mathijs Kadijk" => "mkadijk@gmail.com" }
  spec.social_media_url   = "https://twitter.com/mac_cain13"

  spec.requires_arc = true
  spec.source          = { :git => "https://github.com/mac-cain13/R.swift.Library.git", :tag => "v#{spec.version}" }
  spec.swift_version   = "5.1"

  spec.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES' }

  spec.ios.deployment_target     = '8.0'
  spec.ios.source_files  = "Library/**/*.swift"
  spec.tvos.deployment_target    = '9.0'
  spec.tvos.source_files  = "Library/**/*.swift"
  spec.watchos.deployment_target = '2.2'
  spec.watchos.source_files  = [
    "Library/Core/*.swift", 
    "Library/Foundation/*.swift", 
    "Library/UIKit/UIColor+ColorResource.swift", 
    "Library/UIKit/UIImage+ImageResource.swift", 
    "Library/UIKit/UIFont+FontResource.swift"
  ]

  spec.module_name   = "Rswift"

end
