module Capistrano
  module Monit
    module Generators
      class ConfigGenerator < Rails::Generators::Base
        desc "Create local monit configuration files for customization"
        source_root File.expand_path('../templates', __FILE__)

        def copy_template
          copy_file "monitrc.erb", "config/deploy/templates/monitrc.erb"
        end
      end
    end
  end
end
