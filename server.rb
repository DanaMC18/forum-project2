module App
  class Server < Sinatra::Base

    set :method_override, true

    get "/" do 
      erb :index
    end

    get "/boards" do 
    end

    post "/register" do 
    end

    post "/login" do 
    end

    get "profile/:id" do 
      #link to edit profile if route is user's profile and they are logged in
    end


  end #Server
end #App