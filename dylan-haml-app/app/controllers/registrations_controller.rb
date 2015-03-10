class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      flash[:notice] = "You successfully signed up!"
      redirect_to root_path
    else
      render :new
    end
  end
end
