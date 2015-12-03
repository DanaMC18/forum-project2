module App
  class Server < Sinatra::Base

    set :method_override, true

    get '/' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      erb :index
    end

    get '/boards' do 
      @topics = Topic.all 
      @topics.order
      erb :boards
    end

    get '/register' do 
       erb :register, index: true
    end

    post '/register' do 
     
    end

    get '/login' do 
       erb :login, index: true
    end

    post '/login' do 

    end

    post '/logout' do 
    end

    get "profile/:id" do 
      #link to edit profile if route is user's profile and they are logged in
    end


  end #Server
end #App