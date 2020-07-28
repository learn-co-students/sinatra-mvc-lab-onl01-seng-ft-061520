require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @piglatin = pig_latin.piglatinize(params[:user_phrase])
    erb :final_string
  end
end
