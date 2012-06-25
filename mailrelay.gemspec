Gem::Specification.new do |s|
  s.name        = "mailrelay"
  s.version     = "0.1"
  s.authors     = ["Fernando Morgenstern"]
  s.email       = ["fernando@mailrelay.com"]
  s.homepage    = "http://mailrelay.com/"
  s.summary     = %q{Mailrelay API in Ruby}
  s.description = %q{A simple wrapper for Mailrelay's API}
  s.require_paths = ["lib"]
  
  s.add_dependency('active_support')
  s.add_dependency('httparty')
end