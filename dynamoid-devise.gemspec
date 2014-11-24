# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dynamoid-devise/version"
Gem::Specification.new do |s|
  s.name = "dynamoid-devise"
  s.version = Dynamoid::Devise::VERSION
  s.date = "2014-11-24"
  s.summary = %Q{Support for using Dynamoid ORM with devise}
  s.description = %Q{dynamoid-devise adds Dynamoid support to devise (http://github.com/plataformatec/devise) for authentication support for Rails}
  s.email = "vinay.c@india.com"
  s.homepage = "http://github.com/vinaycyadav/dynamoid-devise"
  s.authors = ["Vinay C"]
  s.files = Dir.glob("lib/**/*") + %w(Changelog.txt dynamoid-devise.gemspec Gemfile LICENSE Rakefile README.markdown)
  s.test_files = Dir.glob("test/**/*")
  s.add_dependency 'dynamoid', '>= 0.6'
  s.add_dependency 'devise', '>= 2.0'
  s.add_dependency "SystemTimer", "~> 1.2" if RUBY_VERSION < "1.9"
end