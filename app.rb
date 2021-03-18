require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
    
    get '/' do 
        "Hello World"
        erb :user_input
    end

    post '/piglatinize' do 
        @instance = PigLatinizer.new
        @words = (params[:user_phrase])

        erb :phrase

    end
end