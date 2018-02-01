#
#  Be sure to run `pod spec lint CustomFrameWorkCreation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "CustomFrameWorkCreation"

  s.version      = "0.0.6"

  s.summary      = "This FrameWork displays a alert message"

  s.description  = "This FrameWork Contains a Label and a Button, when user clicked the    		    Button, it will displays a alert message"

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author             = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }
 
  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "8.0"

 s.source       = { :git => "", :tag => "0.0.6" }


  s.source_files  = "CustomFrameWorkCreation", "CustomFrameWorkCreation/**/*.{h,m,swift}"


  # s.public_header_files = "Classes/**/*.h"


  s.requires_arc = true

  `echo "3.2" > .swift-version`

end
