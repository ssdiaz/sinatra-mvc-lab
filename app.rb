require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
     erb :user_input
    end

    post '/results' do 
        word = PigLatinizer.new
        @piglatin = word.piglatinize(params[:user_input])
        erb :results
    end
end