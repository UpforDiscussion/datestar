class UsersController < ApplicationController

  def index

  end

  def show
    redirect_to root_path
  end

  def new
  end

  def create
    @user = User.create(params[:user])
  end

  def edit
    raise params.inspect
    @user = User.find(params[:id])
  end

  def update
    raise params.inspect
    @user.update_attributes(params[:user])
    redirect_to questions_path
  end

  def destroy
	end
end