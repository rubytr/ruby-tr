module Users
  class SessionsController < Devise::SessionsController
    def new
      redirect_to users_path
    end
  end
end
