require 'spec_helper'

describe CompaniesController do
  context '#index' do
    before do
      FactoryGirl.create_list :company, 10, bypass_humanizer: true
      get :index
    end

    it 'should be success' do
      expect(response).to be_success
    end

    it 'should be have 10 company' do
      expect(assigns(:companies)).not_to be_nil
    end
  end

  context '#create without user' do
    before do
      post :create
    end
    it 'should be redirect to new_user_session path with notice danger' do
      expect(controller).to set_flash[:alert]
      expect(response).to redirect_to new_user_session_path
    end
  end

  context '#create with user' do
    before do
      user = FactoryGirl.create :user
      sign_in user
      post :create, params: { company: { title: 'a company', sector: 'a sector', url: 'http://example.com', city: 'a city' } }
    end
    it 'should be redirect to companies_path with notice flash' do
      expect(controller).to set_flash[:notice]
      expect(response).to redirect_to companies_path
    end
  end
end