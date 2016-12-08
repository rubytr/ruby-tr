require 'spec_helper'

describe Users::SessionsController do
  context '#new' do
    before :each do
      setup_devise
    end

    it 'redirects to users index' do
      get :new
      expect(response).to redirect_to users_path
    end
  end
end
