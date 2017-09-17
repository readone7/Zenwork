class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    json_response(user)
  end

  def create
    user = User.create!(user_params)
    authenticate_user
    json_response(user)
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :password, :email)
  end

end
