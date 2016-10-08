class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:format])

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
    params.require(:user).permit(:role, :industry, :concentration, :expertise, :zipcode)
  end
end
