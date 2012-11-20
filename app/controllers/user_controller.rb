class UserController < ApplicationController

  def index

  end

  def show

  end

  def new
  	@user = User.new
  end

  def create
  	@user = Ninja.new(params[:user])
  end

  def edit

  end

  def update

  end

  def destroy

end