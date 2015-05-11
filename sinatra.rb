require 'sinatra'

set :bind, '0.0.0.0'
set :port, 6666

get '/' do
    'Hello sinatra richard world!'
end
