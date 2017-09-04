require 'spec_helper'

describe UsersController do
  context '#index' do
    it 'should be success' do
      FactoryGirl.create_list :user, rand(2..4)
      get :index
      expect(response).to be_success
    end
  end
end
