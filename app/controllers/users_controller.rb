class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to user_path
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description)
  end
end
