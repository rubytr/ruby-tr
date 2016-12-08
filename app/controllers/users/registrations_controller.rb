class Users::RegistrationsController < Devise::RegistrationsController
  def edit; super; end # We want to test this behavior coming from devise.

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    updated = update_resource(resource, account_update_params)
    if updated
      redirect_to edit_user_registration_path
    else
      respond_with resource
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def account_update_params
    params.require(:user).permit(:email, :name, :twitter, :web)
  end
end
