class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name],
        password: params[:user][:password])
    if @user.valid?
        log_in(@user)

  def show
    redirect_to '/' unless current_user
    @message = params[:message]
    @planet = params[:planet]
    @user = User.find(params[:id])
  end
end
