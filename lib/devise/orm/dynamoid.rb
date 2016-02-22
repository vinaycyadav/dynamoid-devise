require 'orm_adapter-dynamoid'

Dynamoid::Document::ClassMethods.send :include, Devise::Models
