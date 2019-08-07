require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #this lets us pull in the TextAnalyzer.rb 
#file and create a new instance


class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #from model.rb file
    erb :results
  end
end
