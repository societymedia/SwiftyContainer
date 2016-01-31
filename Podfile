# Uncomment this line to define a global platform for your project
platform :ios, "9.2"
inhibit_all_warnings!

# Uncomment this line if you"re using Swift
use_frameworks!

target "SwiftyContainerTests" do
    #inherit! :search_paths
    pod "Quick",  "~> 0.8.0"
    pod "Nimble", "~> 3.1"
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        puts "#{target.name}"
    end
end
