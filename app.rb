require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end


  post '/' do

    @piglatin = PigLatinizer.new (params[:user_phrase])


    erb  :results
  end

end
