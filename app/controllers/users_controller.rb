class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render json: { message: 'Profile updated successfully.' }
    else
      render :edit
    end
  end

end
