module ApplicationHelper
  def resource_name
    :user
  end

  # rubocop:disable Naming/MemoizedInstanceVariableName
  def resource
    @user ||= User.new
  end
  # rubocop:enable Naming/MemoizedInstanceVariableName

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
