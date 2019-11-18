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

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
end
