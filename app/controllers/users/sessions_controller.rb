module Users
  class SessionsController < Devise::SessionsController
    def new
      redirect_to :back
    end
  end
end
