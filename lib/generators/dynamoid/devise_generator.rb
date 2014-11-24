require 'generators/devise/orm_helpers'

module Dynamoid
  module Generators
    class DeviseGenerator < Rails::Generators::NamedBase
      include Devise::Generators::OrmHelpers

      def generate_model
        invoke "dynamoid:model", [name] unless model_exists?
      end

      def inject_devise_content
        inject_into_file model_path, model_contents, :after => "include Dynamoid::Document\n"
      end

      def replace_default_devise_orm
        gsub_file Rails.root.join("config/initializers/devise.rb"), 'orm/active_record', 'orm/dynamoid'
      end

    end
  end
end