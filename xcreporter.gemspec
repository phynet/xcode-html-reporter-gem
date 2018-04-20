Gem::Specification.new do |s|
  s.name        = 'xcreporter'
  s.version     = '0.0.1'
  s.executables << 'xcreporter'
  s.date        = '2018-03-03'
  s.summary     = "Generates HTML report for UI Test"
  s.description = "A simple HTML generator for XCode UI Test"
  s.authors     = ["Sofia Swidarowicz"]
  s.email       = 'sofia.swidarowicz@gmail.com'
  s.files       = ["lib/xcreporter.rb", "lib/xcsummary", "bin/xcreporter", "lib/String.rb"]
  s.homepage    =
    'http://rubygems.org/gems/xcode-html-report'
  s.license       = 'MIT'
  s.metadata    = { "source_code_uri" => "https://github.com/phynet/xcode-html-reporter-gem" }
end