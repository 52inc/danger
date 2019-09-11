# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

Bundler.setup :default

Bundler::GemHelper.install_tasks

RuboCop::RakeTask.new

RSpec::Core::RakeTask.new(:spec)

task default: %i[rubocop spec]
