module App
  class Server < Sinatra::Base

    set :method_override, true
    enable :sessions


    #home page
    get '/' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      erb :index
    end


    #topics page
    #ranked by amount of votes; shows creator and number of comments
    get '/topics' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      @topics = Topic.topics_ordered
      erb :topics
    end


    #to vote on topics 
    post '/topics/:id/votes' do
      user_id = session[:user_id] if session[:user_id]
      topic_id = params[:id]
      Vote.create(user_id: user_id, topic_id: topic_id)
      redirect to '/topics'
    end


    #to get to new topic form 
    get '/topics/new' do 
      erb :topic_new
    end


    #to createa a new topic
    post '/topics/new' do 
      user_id = session[:user_id]
      Topic.create(title: params[:title], content: params[:content], created_at: DateTime.now, user_id: user_id)
      redirect to "/topics"
    end


    #to enter a topic
    #read its content and see/add comments
    get '/topics/:id' do 
      @topic = Topic.find(params[:id])
      # @created_by = @topic.user.username
      @comments = Comment.all.where(topic_id: params[:id])
      @user = User.find(session[:user_id]) if session[:user_id]

      if @comments.length <= 1
        @comment = @comments.first
      end
      erb :topic_show
    end


    # to get edit topic form
    get '/topics/:id/edit' do 
      @topic = Topic.find(params[:id])
      erb :topic_edit
    end


    # edit topic
    patch '/topics/:id/edit' do 
      topic = Topic.find(params[:id])
      topic.update({title: params[:title], content: params[:content]})
      redirect to "/topics/#{topic.id}"
    end


    # delete topic
    delete '/topics/:id' do 
      topic = Topic.find(params[:id])
      topic.destroy
      redirect to '/topics'
    end


    # like a comment
    post '/topics/:id/comments/:id2/likes' do 
      user_id = session[:user_id] if session[:user_id]
      comment_id = params[:id2]
      Like.create(user_id: user_id, comment_id: comment_id)
      redirect to "topics/#{params[:id]}"
    end


    #to create a new comment
    post '/topics/:id/comments/new' do
      user_id = session[:user_id]
      topic_id = params[:id]
      comment = Comment.create(content: params[:content], created_at: DateTime.now, user_id: user_id, topic_id: topic_id)
      redirect to "/topics/#{params[:id]}"
    end


    #list users page
    get '/users' do 
      @users = User.all
      erb :users
    end


    # profile page of a particular user
    get '/users/:id' do 
      @user = User.find(session[:user_id]) if session[:user_id]
      @profile = User.find(params[:id])
      erb :user_show
    end


    # to get to edit user form
    get '/users/:id/edit' do 
      @user = User.find(params[:id])
      erb :user_edit
    end


    # edit user profile
    patch '/users/:id' do 
      user = User.find(params[:id])
      user.update({name: params[:name], username: params[:username], profile_pic: params[:profile_pic]})
      redirect to "/users/#{params[:id]}"
    end


    # delete user profile
    delete '/users/:id' do 
      user = User.find(params[:id])
      user.destroy
      redirect to '/users'
    end


    #Registration Modal
    post '/users' do 
      user = User.new({name: params[:name], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation]})
      if user.save
        redirect to '/topics'
      elsif params[:password] != params[:password_confirmation]
        @password_message = "Sorry #{params[:name]}, your passwords did not match. Please try again."
        erb :index
      else
        @username_message = "Sorry #{params[:name]}, #{params[:username]} is already a username."
        erb :index
      end
    end


    #Login Modal
    post '/sessions' do 
      user = User.find_by({username: params[:username]})
      if user
        session[:user_id] = user.id
        redirect to '/'
      else
        @incorrect_info_message = 'Your username or password does not match our records, please try again.'
        erb :index
      end
    end


    post '/logout' do 
    end


  end #Server
end #App











