class UsersController < ApplicationController

  def index
   @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end


  def create
    new_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], image: params[:image])
    
    new_user.save
    flash[:success] = "User Created"
    redirect_to "/users/"
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
    
  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.save
    flash[:success] = "User Updated"
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find_by(id: params[:id]).delete
    flash[:success] = "User Deleted"
    redirect_to "/users"
  end


end
