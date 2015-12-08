require "redcarpet"

module App
  class Server < Sinatra::Base

    set :method_override, true
    enable :sessions
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)


    #TOPICS:

    #home page same as topics page
    get "/" do 
      @user = User.find(session[:user_id]) if session[:user_id]
      @topics = Topic.topics_ordered
      erb :topics
    end


    #to get to new topic form 
    get "/topics/new" do 
      if session[:user_id]
        erb :topic_new
      else
        redirect to "/"
      end
    end


    #to vote on topics 
    post "/topics/:id/votes" do
      user_id = session[:user_id] if session[:user_id]
      topic_id = params[:id]
      Vote.create(user_id: user_id, topic_id: topic_id)
      redirect to "/"
    end


    #to create a new topic
    post "/topics/new" do 
      user_id = session[:user_id]
      Topic.create(title: params[:title], content: params[:content], created_at: DateTime.now, user_id: user_id)
      redirect to "/"
    end


    #to enter a topic
    get "/topics/:id" do 
      @topic = Topic.find(params[:id])
      @comments = Comment.all.where(topic_id: params[:id])
      @user = User.find(session[:user_id]) if session[:user_id]
      if @comments.length <= 1
        @comment = @comments.first
      end
      erb :topic_show
    end


    # to get edit topic form
    get "/topics/:id/edit" do 
      @topic = Topic.find(params[:id])
      if session[:user_id] == @topic.user_id
        erb :topic_edit
      else
        redirect to "/topics/#{@topic.id}"
      end
    end


    # edit topic
    patch "/topics/:id/edit" do 
      topic = Topic.find(params[:id])
      topic.update({title: params[:title], content: params[:content], created_at: DateTime.now})
      redirect to "/topics/#{topic.id}"
    end


    # delete topic
    delete "/topics/:id" do 
      topic = Topic.find(params[:id])
      topic.destroy
      redirect to "/"
    end


    #COMMENTS:

    # like a comment
    post "/topics/:id/comments/:id2/likes" do 
      user_id = session[:user_id] if session[:user_id]
      comment_id = params[:id2]
      Like.create(user_id: user_id, comment_id: comment_id)
      redirect to "/topics/#{params[:id]}"
    end


    # get to edit comment form
    get "/topics/:id/comments/:id2/edit" do 
      @comment = Comment.find(params[:id2])
      @topic = Topic.find(params[:id])
      if session[:user_id] == @comment.user_id
        erb :comment_edit
      else
        redirect to "/topics/#{params[:id]}"
      end
    end


    # to update comment
    patch "/topics/:id/comments/:id2/edit" do 
      comment = Comment.find(params[:id2])
      comment.update(content: params[:content], created_at: DateTime.now)
      redirect to "/topics/#{params[:id]}"
    end


    #to delete a comment
    delete "/topics/:id/comments/:id2" do 
      comment = Comment.find(params[:id2])
      comment.destroy
      redirect to "/topics/#{params[:id]}"
    end


    #to create a new comment
    post "/topics/:id/comments/new" do
      user_id = session[:user_id]
      topic_id = params[:id]
      comment = Comment.create(content: params[:content], created_at: DateTime.now, user_id: user_id, topic_id: topic_id)
      redirect to "/topics/#{params[:id]}"
    end


    #USERS:

    #list users
    get "/users" do 
      if session[:user_id]
        @users = User.all
        erb :users
      else
        redirect to "/"
      end
    end


    # profile page of a particular user
    get "/users/:id" do 
      @user = User.find(params[:id])
      if session[:user_id] 
        erb :user_show
      else
        redirect to "/"
      end
    end


    # to get to edit user form
    get "/users/:id/edit" do 
      @user = User.find(params[:id])
      if session[:user_id] == @user.id
        erb :user_edit
      elsif session[:user_id]
        redirect to "/users"
      else
        redirect to "/"
      end
    end


    # edit user profile
    patch "/users/:id" do 
      user = User.find(params[:id])
      user.update({name: params[:name], username: params[:username], profile_pic: params[:profile_pic]})
      redirect to "/users/#{params[:id]}"
    end


    # delete user profile
    delete "/users/:id" do 
      user = User.find(params[:id])
      user.destroy
      session[:user_id] = nil
      redirect to "/"
    end


    # user registration 
    post "/users" do 
      user = User.new({name: params[:name], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation]})
      @topics = Topic.all
      if user.save
        redirect to "/"
      elsif params[:password] != params[:password_confirmation]
        @password_message = "Sorry #{params[:name]}, your passwords did not match. Please try again."
        erb :topics
      else
        @username_message = "Sorry #{params[:name]}, #{params[:username]} is already a username."
        erb :topics
      end
    end


    # user login
    post "/sessions" do 
      user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
      @topics = Topic.all
      if user
        session[:user_id] = user.id 
        redirect to "/"
      else
        @incorrect_info = "Your username or password does not match our records, please try again."
         erb :topics
      end
    end


    # user logout
    delete "/sessions" do 
      session[:user_id] = nil
      redirect to "/"
    end


  end #Server
end #App











