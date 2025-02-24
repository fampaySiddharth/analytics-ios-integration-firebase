Pod::Spec.new do |s|
  s.name             = "Segment-Firebase"
  s.version          = "2.7.9"
  s.summary          = "Firebase Integration for Segment's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Firebase integration for the iOS library.
                       DESC

  s.homepage         = "http://segment.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Segment" => "friends@segment.com" }
  s.source           = { :git => "https://github.com/fampaySiddharth/analytics-ios-integration-firebase.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/segment'

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'Segment-Firebase/Classes/**/*'
  s.default_subspec = 'Core'
  s.static_framework = true

  s.dependency 'Analytics'
  s.dependency 'Firebase', '~> 7.2'
  s.dependency 'Firebase/Core', '~> 7.2'
  s.dependency 'FirebaseAnalytics','~> 7.2'
  s.dependency 'Firebase/Crashlytics','~> 7.2'
  s.dependency 'Firebase/DynamicLinks','~> 7.2'
  s.dependency 'Firebase/Messaging','~> 7.2'
  s.dependency 'Firebase/RemoteConfig','~> 7.2'
  s.dependency 'FirebaseABTesting','~> 7.2'

  s.subspec 'Core' do |core|
    #For users who only want the core Firebase package
  end

  s.subspec 'DynamicLinks' do |dynamiclinks|
    # This will bundle in Firebase Dynamic Link support
    dynamiclinks.dependency 'Firebase/DynamicLinks'
  end
end
