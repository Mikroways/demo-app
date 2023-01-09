require 'bundler'
Bundler.require

set :bind, '0.0.0.0'

before do
  content_type :json
end

get '/' do
  { data: ENV.fetch('message', 'Hello world') }.to_json
end

get '/env' do
  ENV.to_h.to_json
end

get '/request' do
  request.env.to_json
end

