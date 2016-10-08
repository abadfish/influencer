class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.new
    if @user.save
      redirect_to edit_user_registration_path
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to root_path
    # add some validations here
    # if @user.save
    #   redirect_to root_path
    # else
    #   display error messages
    # end
  end

  private

  def user_params
    params.require(:user).permit(:role)
  end
end
