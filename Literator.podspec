Pod::Spec.new do |s|
  literator_version = "1.4.0"
  deployment_version = '12.0'
  swift_version = '5.5'
  
  s.name         = 'Literator'
  s.version      = literator_version
  s.summary      = 'iOS SDK for Literal.ai'
  s.description  = <<-DESC
                      Visually keep your team in sync.
                      See your mobile app's user flows with actual screens, annotated with analytics events and more.
                    DESC
  s.homepage     = 'https://literal.ai/'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Literals Inc' => 'dev@literal.ai' }
  
  s.platform     = :ios, deployment_version
  s.swift_version = swift_version
  
  s.source       = { :git => 'https://github.com/Literals-Inc/Literator.git', :tag => literator_version }
  # s.source       = { :http => 'file:' + __dir__ }
  
  s.vendored_frameworks = 'Literator/Literator.xcframework'
  s.ios.frameworks = 'UIKit', 'Foundation'
  end
