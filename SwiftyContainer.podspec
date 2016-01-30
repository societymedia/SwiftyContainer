  Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "SwiftyContainer"
  s.summary = "A simple Dependency Container written in Swift."
  s.requires_arc = true

  # 2
  s.version = "0.1.0"

  # 3
  s.license = "MIT"

  # 4 - Replace with your name and e-mail address
  s.author = { "Tony Merante" => "merante@gmail.com" }

  # For example,

  # 5 - Replace this URL with your own Github page's URL (from the address bar)
  s.homepage = "https://github.com/societymedia/SwiftyContainer"


  # 6 - Replace this URL with your own Git URL from "Quick Setup"
  s.source = { :git => "https://github.com/societymedia/SwiftyContainer.git", :tag => "0.1.0"}

  # 7
  s.dependency 'Quick', '~> 0.8.0'
  s.dependency 'Nimble', '3.0.0'

  # 8
  s.source_files = "SwiftyContainer/**/*.{swift}"

  # 9
  s.resources = "SwiftyContainer/**/*.{png,jpeg,jpg,storyboard,xib}"
end
