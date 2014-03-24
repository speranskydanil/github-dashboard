#!/usr/bin/env ruby

require 'sinatra'
require 'open-uri'

set :port, ARGV[0] || 3000

set :public_folder, File.dirname(__FILE__) + '/assets'

get '/' do
  haml :index
end

