module App
  class Server < Sinatra::Base

    set :method_override, true
    enable :sessions

    get '/' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      erb :index
    end


    get '/topics' do 
      @topics = Topic.all
      
      #@votes = Vote.all
      #ORDER based on votes; something like votes.find_by(topic_id: @topic[:id]).order
      erb :topics
    end


    get '/topics/:id' do 
      @topic = Topic.find(params[:id])
      @user = @topic.user.username

      @comments = Comment.all.where(topic_id: params[:id])

      if @comments.length <= 1
        @comment = @comments.first
      end

      erb :show_topic
    end


    #When registering
    post '/users' do 
      user = User.find_by({username: params[:username]})
      
      if user.username.downcase == params[:username].downcase
        "Sorry #{params[:name]}, but that username has already been taken. Please try a new username."
        redirect to '/#'
      elsif params[:password] != params[:password_confirmation]
        "Sorry #{params[:name]}, but your passwords don't match. Please enter them again."
      else
        User.create({name: params[:name], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation]})
        redirect to '/'
      end
    end


    #When logging in
    post '/sessions' do 
      user = User.find_by({username: params[:username]})
      session[:user_id] = user[:id]

      redirect to '/'
    end


    post '/logout' do 
    end


    get 'users/:id' do 
      #link to edit profile if route is user's profile and they are logged in
    end


  end #Server
end #App











