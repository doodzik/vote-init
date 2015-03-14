# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vote_init/version'

Gem::Specification.new do |spec|
  spec.name          = 'vote_init'
  spec.version       = VoteInit::VERSION
  spec.authors       = ['doodzik']
  spec.email         = ['frederik.dudzik@gmail.com']

  spec.summary       = 'Use init instead of initialize'
  spec.homepage      = 'https://github.com/doodzik/vote_init'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
