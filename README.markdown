# Devise with DynamoID

## Disclaimer: this is a work in progress


`dynamoid-devise` will let you use [devise](http://github.com/plataformatec/devise) with [dynamoid](https://github.com/Veraticus/Dynamoid).

`dynamoid-devise` is intended for use with `Rails 4.1.x` and `Devise 3.4.x` and above. It may work with earlier versions of devise.

This README only covers `dynamoid-devise` specifics. Make sure to read the [devise README](http://github.com/plataformatec/devise/blob/master/README.rdoc)

## Installation

Add `devise`, `dynamoid` and `dynamoid-devise` gems to your Gemfile (your Rails app Gemfile).

    gem 'devise'
    gem 'dynamoid'
    gem 'dynamoid-devise'

Use bundler to install all required gems in your Rails app

    bundle install

Run the devise install generator, followed by the dynamoid-devise model generator:

    rails generate devise:install
    rails generate dynamoid:devise MODEL

The devise install generator will install an initializer (`config/inititializer/devise.rb`)
which describes ALL Devise's configuration options and you MUST take a look at it.

Maker sure this line exists: require 'devise/orm/dynamoid'
NOTE: The model generator should do this automatically.

To add Devise to any of your models using the generator:
    rails generate dynamoid:devise MODEL

Example: create a User model for use with Devise
    rails generate dynamoid:devise User

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Maintainers

*Vinay C*

Also feel free to suggest, place a fix and improve in the code. Thanks!!!


## Bugs and Feedback

For *dynamoid-devise* specific issues, please create an issue on GitHub at: [dynamoid-devise issues](http://github.com/vinaycyadav/dynamoid-devise/issues)


## Copyright

See LICENSE for details. Copyright (c) 2014 Vinay C.