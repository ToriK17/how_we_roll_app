class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = user.new(
      name: params[:name], 
      password: params[:password],
      bio: params[:bio],
      image: params[:image]
      )
    @user.save
    render "show.json.jb"
  end

  def show
    @user = user.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = user.find(params[:id])
    @user.name = params[:name] || @user.name 
    @user.password = params[:password] || @user.password 
    @user.bio = params[:bio] || @user.bio 
    @user.image = params[:image] || @user.image 
    @user.save
    render "show.json.jb"
  end

  def destroy
    user = user.find(params[:id])
    user.destroy
    render json: {message: "user destroyed."}
  end
end
