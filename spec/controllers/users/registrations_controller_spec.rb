require 'spec_helper'

describe Users::RegistrationsController do
  context '#update' do
    before :each do
      setup_devise
    end

    context 'with correct data' do
      it 'updates user and redirects to edit user path' do
        user = FactoryGirl.create(:user)
        sign_in user
        new_info = { email: 'new_mail@gmail.com', name: 'New name' }
        put :update, params: { user: new_info }
        expect(response).to redirect_to edit_user_registration_path
      end
    end

    context 'with wrong data' do
      it 'does not update' do
        user = FactoryGirl.create(:user)
        sign_in user
        new_info = { email: 'wrong_mail_address', name: 'New name' }
        put :update, user: new_info
        expect(response).to be_success
      end
    end
  end

  context '#edit' do
    before :each do
      setup_devise
    end

    context 'when not logged in' do
      it 'redirects to users path' do
        get :edit
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
end
