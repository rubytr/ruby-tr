class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env['omniauth.auth'])
    sign_in @user
    flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: 'Github')
    redirect_to edit_user_registration_path
  end
end
