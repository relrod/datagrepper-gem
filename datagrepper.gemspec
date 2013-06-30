Gem::Specification.new do |s|
  s.name        = 'datagrepper'
  s.version     = '1.0.1'
  s.date        = '2013-06-30'
  s.homepage    = 'https://www.github.com/CodeBlock/datagrepper-gem'
  s.summary     = "Ruby interface to Fedora's Datagrepper API."
  s.description = "Provides an interface via HTTParty to Fedora's Datagrepper API: https://apps.fedoraproject.org/datagrepper/"
  s.authors     = ["Ricky Elrod"]
  s.email       = 'ricky@elrod.me'
  s.files       = ["lib/datagrepper.rb", "README.md", "LICENSE"]
  s.add_dependency "httparty"
  s.add_dependency "time-lord"
end
