# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bxslider/version'

Gem::Specification.new do |gem|
  gem.name          = "bxslider"
  gem.version       = Bxslider::VERSION
  gem.authors       = ["EasyIP2023"]
  gem.email         = ["vdavis2495@gmail.com"]
  gem.description   = %q{Bx slider with Ruby on Rails}
  gem.summary       = %q{This gem allows you to use Bx slider with Ruby on Rails}
  gem.homepage      = "https://github.com/EasyIP2023/bxslider"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency("bundler", "~> 1.14")
  gem.add_development_dependency("rake", "~> 10.0")
  gem.add_development_dependency("actionview", ">= 4.2.0")
end
