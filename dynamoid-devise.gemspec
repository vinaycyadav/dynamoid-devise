# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dynamoid-devise/version"
Gem::Specification.new do |s|
  s.name = "dynamoid-devise"
  s.version = "0.0.1" #Dynamoid::Devise::VERSION
  s.required_ruby_version = '>= 1.9.3'
  s.licenses    = ['MIT']
  s.date = "2014-11-24"
  s.summary = %Q{Support for using Dynamoid ORM with devise}
  s.description = %Q{dynamoid-devise is flexible authentication solution for Rails 4.1.x with Warden using dynamoid as ORM...}
  s.email = "vinay.c@india.com"
  s.homepage = "http://github.com/vinaycyadav/dynamoid-devise"
  s.authors = ["Vinay C"]
  s.files = Dir.glob("lib/**/*") + %w(Changelog.txt dynamoid-devise.gemspec Gemfile LICENSE Rakefile README.markdown)
  s.test_files = Dir.glob("test/**/*")
  s.add_dependency 'dynamoid', '>= 0.7.1'
  s.add_dependency 'devise', '>= 3.4.1'
  s.add_dependency "SystemTimer", "~> 1.2" if RUBY_VERSION < "1.9"
end