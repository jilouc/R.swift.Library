Pod::Spec.new do |spec|

  spec.name         = "R.swift.Library"
  spec.version      = "0.12.0"
  spec.license      = "MIT"

  spec.summary      = "Companion library for R.swift, featuring types used to type resources"
  spec.description  = <<-DESC
                   This library contains types used by the `R.generated.swift` file that is normally generated by R.swift. R.swift depends on this pod to include some types and other libraries can use this project to extend R.swift types.

                   R.swift is a tool to get strong typed, autocompleted resources like images, fonts and segues in Swift projects.
                   DESC
  spec.homepage     = "https://github.com/mac-cain13/R.swift"
  spec.documentation_url = "https://github.com/mac-cain13/R.swift/tree/master/Documentation"
  spec.screenshots  = [ "https://raw.githubusercontent.com/mac-cain13/R.swift/master/Documentation/Images/DemoUseImage.gif",
                        "https://raw.githubusercontent.com/mac-cain13/R.swift/master/Documentation/Images/DemoRenameImage.gif" ]

  spec.author             = { "Mathijs Kadijk" => "mkadijk@gmail.com" }
  spec.social_media_url   = "https://twitter.com/mac_cain13"

  spec.requires_arc = true
  spec.source          = { :git => "https://github.com/mac-cain13/R.swift.git", :tag => "v#{spec.version}" }

  spec.ios.deployment_target     = '8.0'
  spec.tvos.deployment_target    = '9.0'

  spec.module_name   = "Rswift"
  spec.source_files  = "Library/**/*.swift"

end
