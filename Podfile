# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

use_frameworks!
inhibit_all_warnings!

workspace 'LoadFaster'

target 'LoadFaster' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks

  # Pods for LoadFaster

end


target 'Core' do
    project 'Core/Core.xcodeproj'
    pod 'Crashlytics', '3.12.0'
    pod 'Fabric', '1.9.0'
end

post_install do |installer|
                                                            
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            
            if config.name == 'Debug'
                config.build_settings['OTHER_SWIFT_FLAGS'] = ['$(inherited)', '-Onone']
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
            end
            
            if target.name == 'Pods-Core'
                puts "target.name: #{target.name}"
                configFilePath = config.base_configuration_reference.real_path
                configFile = File.read(configFilePath)
                configFile = configFile.gsub(/OTHER_LDFLAGS = [A-Z_ =\-a-z\"0-9]*/, "OTHER_LDFLAGS = -all_load ")
                File.open(configFilePath, "w") { |file| file << configFile }
            end
        end
    end
end
