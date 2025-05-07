require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name'].split('/')[1..-1].join('/')
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['repository']['url']
  s.license      = package['license']
  s.platform     = :ios, '13.4'
  s.author       = package['author']
  s.source       = { git: 'https://github.com/5-stones/react-native-background-downloader.git', tag: 'feat/upgrade-mmkv' }

  s.source_files = 'ios/**/*.{h,m,mm,swift}'
  # React Native Core dependency
  install_modules_dependencies(s)

  s.dependency 'MMKV', '~> 2.2.1'
end
