require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorPassToWallet'
  s.version = '0.0.3'
  s.summary = 'Allow to add .pkpass file to Apple Wallet'
  s.license = 'MIT'
  s.homepage = 'git+https://github.com/valentinAbundo/capacitor-pass-to-wallet.git'
  s.author = package['author']
  s.source = { :git => 'git+https://github.com/valentinAbundo/capacitor-pass-to-wallet.git', :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '12.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
end
