require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input 
  end 
  
  post '/piglatinize' do
    words = params["user_phrase"]
    latinizer = PigLatinizer.new 
    @pig_latinized = latinizer.piglatinize(words)
    erb :piglatinized
  end 
end