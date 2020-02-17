class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    user = User.new(
      name: params[:name], 
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      bio: params[:bio],
      image: params[:image]
      )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])

    if @user == current_user
      @user.update( 
        name: params[:name] || @user.name,
        email: params[:email] || @user.email,
        bio: params[:bio] || @user.bio, 
        image: params[:image] || @user.image
      )
      if params[:password] && params[:password_confirmation]
        @user.password = params[:password] 
        @user.password_confirmation = params[:password_confirmation] 
      end  
    end
     
    @user.save
    render 'show.json.jb'
    
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "user destroyed."}
  end
end
