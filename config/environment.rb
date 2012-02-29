# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ThirdApp::Application.initialize!

# Precompile Blueprint CSS
  config.assets.precompile += [ "blueprint/*.css" ]
end