
Gem::Specification.new do |s|
  s.name        = "sermonaudio"
  s.version     = '0.1.0'
  s.authors     = ["Cody Barr"]
  s.email       = ["cody.barr@gmail.com"]
  s.homepage    = "https://github.com/codybarr/sermonaudio"
  s.summary     = "Interface the SermonAudio API easily."
  s.description = "SermonAudio uses the Savon gem to interface with SermonAudio as easily as possible."
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.add_dependency "savon"
  s.license     = "MIT"
end
