class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name],
        password: params[:user][:password])

      if @user.valid?
        log_in(@user)
      else
        redirect_to user_path(@user)
      end
  end
end
