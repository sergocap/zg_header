# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zg_header/version'

Gem::Specification.new do |spec|
  spec.name          = 'zg_header'
  spec.version       = ZgHeader::VERSION
  spec.authors       = ['sergocap']
  spec.email         = ['systemofadown.2013@yandex.ru']

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'configliere'
  spec.add_development_dependency 'bundler', "~> 1.14"
  spec.add_development_dependency 'rake', "~> 12.0"
end
