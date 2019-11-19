class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

    if user.persisted?
      sign_in user
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      redirect_to edit_user_registration_path(user)
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url and return
    end
  end
end
