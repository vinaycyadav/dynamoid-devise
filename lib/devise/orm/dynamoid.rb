require 'orm_adapter/adapters/dynamoid'

Dynamoid::Document::ClassMethods.send :include, Devise::Models
