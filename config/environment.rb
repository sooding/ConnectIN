# Load the rails application
require File.expand_path('../application', __FILE__)

# Load development vars from local file
devel_env = Rails.root.join('config', 'devel_env.rb')
load(devel_env) if File.exists?(devel_env) and not Rails.env.production?

# Initialize the rails application
ConnectIN::Application.initialize!


