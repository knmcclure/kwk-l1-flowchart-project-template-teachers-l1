
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  post '/results' do
    @quiz= Dog.new(params[:name], params[:q1].to_i, params[:q2].to_i, params[:q3].to_i)
    
    "Your breed is a #{@quiz.results}!"
    
  end

end
