class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  private

  def user_params

  end
end
