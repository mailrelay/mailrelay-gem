Gem::Specification.new do |s|
  s.name        = "mailrelay"
  s.version     = "0.1.2"
  s.authors     = ["Fernando Morgenstern"]
  s.email       = ["fernando@mailrelay.com"]
  s.homepage    = "http://mailrelay.com/"
  s.summary     = %q{Mailrelay API in Ruby}
  s.description = %q{A simple wrapper for Mailrelay's API}
  s.files = ["lib/mailrelay.rb", "lib/mailrelay/api.rb"]

  s.add_dependency('activesupport', '>= 3.0.0')  
  s.add_dependency('httparty')
end
