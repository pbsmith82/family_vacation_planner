require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
		set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(20) } 
  end

  get "/" do
    binding.pry
    erb :index
  end

  get '/login' do
    erb :index
  end

  post '/signup' do
    @user = User.new(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
    @user.save
    session[:user_id] = @user.id

    redirect '/users/home'
  end


  get '/sessions/logout' do
    session.clear
    redirect '/login'
  end

  post "/login" do
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/success"
      else
      redirect "/failure"
      end
    end
  
    get "/success" do
      if logged_in?
        erb :show
      else
        redirect "/login"
      end
    end
  
    get "/failure" do
      erb :failure
    end

    helpers do
      def logged_in?
        !!session[:user_id]
      end
  
      def current_user
        User.find(session[:user_id])
      end
    end

end
