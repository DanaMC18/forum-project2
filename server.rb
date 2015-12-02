module App
  class Server < Sinatra::Base

    set :method_override, true

    get "/" do 
      erb :index
    end

  end #Server
end #App