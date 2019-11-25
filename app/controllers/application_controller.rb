class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
    # # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?


    def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :photo, :first_name, :last_name])

      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :photo, :first_name, :last_name])
    end

  # def after_sign_in_path_for(resource)
  #   groups_path
  #   # return the path based on resource
  # end
end
