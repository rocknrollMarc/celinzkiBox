require 'dragonfly/dropbox_data_store'
require 'dragonfly'

# Configure
Dragonfly.app.configure do

  plugin :imagemagick
  

  secret "d78d9e7276409e49095aaad38adfb06842af41545a1b6a23f1d3581282c5d7d0"

  url_format "/media/:job/:name"


  datastore :dropbox,
    app_key:               ENV['s7hsmo7ejhwa5f6'],
    app_secret:            ENV['2d3w286im7ibn54'],
    access_token:          ENV['wmxdhfrgwxcod2zd'],
    access_token_secret:   ENV['aps6rli82pixae5'],
    user_id:               ENV['14488961']

  end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
