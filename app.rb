require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # text_to_translate = params[:user_phrase]

    @piglatin = PigLatinizer.new
    @answer = @piglatin.piglatinize(params[:user_phrase])

    erb :piglatinize
  end

end