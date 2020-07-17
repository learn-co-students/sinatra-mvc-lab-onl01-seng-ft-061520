require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    params[:user_phrase] ? input = params[:user_phrase] : input = "Gimme some words to convert yo"
    converter = PigLatinizer.new()
    @result = converter.piglatinize(input)
    erb :result
  end
end
