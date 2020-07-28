require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    ring = PigLatinizer.new # creates a new instance
    @string = ring.pig(params[:user_phrase]) # runs the instance on the user's input
    erb :piglatinize
  end
end
