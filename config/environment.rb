# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ProjectManager::Application.initialize!


ProjectManager::Application.configure do
  config.react.variant = :development
end

ProjectManager::Application.configure do
  config.react.variant = :production
end

ProjectManager::Application.configure do
  config.react.addons = true # defaults to false
end
