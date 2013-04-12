require './mechanic-server'
require 'rack'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :post]
  end
end

use ActiveRecord::ConnectionAdapters::ConnectionManagement

run MechanicServer::API
