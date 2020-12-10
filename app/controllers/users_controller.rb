class UsersController < ApplicationController


    get '/signup' do

        erb :"/users/new"
    end

    post '/signup' do
        @user = User.new(params[:user])
        @user.save
        session[:user_id] = @user.id
    
        redirect '/users/show'
    end


end