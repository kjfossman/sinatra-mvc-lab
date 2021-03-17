require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/' do 
        "Hello World"
        erb :user_input
    end

    post '/' do 
        @words = PigLatinizer.new

    end
end