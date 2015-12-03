module App
  class Server < Sinatra::Base

    set :method_override, true
    enable :sessions

    get '/' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      erb :index
    end


    get '/topics' do 
      @topics = Topic.topics_ordered
      
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
      user = User.new({name: params[:name], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation]})
      if user.save
        redirect to '/topics'
      else
        # "Sorry #{params[:name]}, but that username has already been taken. Please try a new username."
        # "Sorry #{params[:name]}, but your passwords don't match. Please enter them again."    
        @message = "something doesn't match or whatever"
        erb :index
      end
    end


    #When logging in
    post '/sessions' do 
      user = User.find_by({username: params[:username]})
      if user
        session[:user_id] = user.id
        redirect to '/'
      else
        "wrong info"
      end
    end

    post '/topics/:id/votes' do
      user_id = session[:user_id] 
      topic_id = params[:id]
      Vote.create(user_id: user_id, topic_id: topic_id)

      redirect to '/topics'
    end


    post '/logout' do 
    end


    get 'users/:id' do 
      #link to edit profile if route is user's profile and they are logged in
    end


  end #Server
end #App











