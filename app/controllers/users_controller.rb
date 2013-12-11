class UsersController < ApplicationController

  def index
    @users = User.page(params[:page]).per(3)
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email_address = params[:email_address]
    @user.password = params[:password]
    @user.size = params[:size]
    @user.body_shape = params[:body_shape]

    if @user.save
      redirect_to users_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: current_user.id)
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email_address = params[:email_address]
    @user.password = params[:password]
    @user.size = params[:size]
    @user.body_shape = params[:body_shape]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
