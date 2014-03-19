#!/usr/bin/env ruby

require 'sinatra'
require 'open-uri'

set :port, ARGV[0] || 3000

set :public_folder, File.dirname(__FILE__) + '/assets'

get '/' do
  haml :index
end

get '/api/' do
  content_type :json
  uri = "https://api.github.com/#{params[:query]}"
  puts "GET #{uri}"
  open(URI.encode(uri)).read
end

