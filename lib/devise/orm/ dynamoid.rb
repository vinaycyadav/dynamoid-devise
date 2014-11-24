require 'orm_adapter/adapters/dynamoid'

DynamoID::Document::ClassMethods.send :include, Devise::Models