# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lj_test_api/version'

Gem::Specification.new do |spec|
  spec.name          = "lj_test_api"
  spec.version       = LjTestApi::VERSION
  spec.authors       = ["Lauren Joyce"]
  spec.email         = ["joycelc4186@gmail.com"]

  spec.summary       = %q{Calls the Chicago Employees API}
  spec.description   = %q{Returns JSON data from the Chicago employees API}
  spec.homepage      = "https://github.com/laurenjoyce/lj_test_api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "unirest", "1.1.2"
  spec.add_dependency "jbuilder", "2.6.3"
end
