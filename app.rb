require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    erb :piglatinize
  end


  post '/piglatinize' do
    original_string = params[:user_phrase]
    piglatinize_instance = PigLatinizer.new
    @piglatinize_string = piglatinize_instance.piglatinize(original_string)
  end


end
