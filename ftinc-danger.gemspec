# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require '52inc-danger/version'

Gem::Specification.new do |s|
  s.name        = '52inc-danger'
  s.version     = FtincDanger::VERSION
  s.authors     = ['r0adkll']
  s.email       = ['drew@52inc.com']
  s.homepage    = 'https://github.com/52inc/danger'
  s.summary     = 'Danger.systems conventions for 52inc projects.'
  s.description = 'Packages a Dangerfile to be used with Danger for projects within the Ruby Grape community.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'danger', '~> 6.0.11'
  s.add_runtime_dependency 'danger-changelog', '~> 0.6.0'
end