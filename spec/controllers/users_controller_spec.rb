require 'spec_helper'

describe UsersController do
  before(:context) do
    @default_per_page = Kaminari.config.default_per_page
    Kaminari.config.default_per_page = 2
  end

  context '#index' do
    it 'should be success' do
      FactoryBot.create_list :user, rand(2..4)
      get :index
      expect(response).to be_success
    end

    it 'should see 2 records' do
      FactoryBot.create_list :user, 3
      get :index
      expect(response).to be_success
      expect(assigns(:users).size).to eq 2
    end

    it 'should change page and see 1 record' do
      FactoryBot.create_list :user, 3
      get :index, params: { page: 2 }
      expect(response).to be_success
      expect(assigns(:users).size).to eq 1
    end
  end

  after(:context) do
    Kaminari.config.default_per_page = @default_per_page
  end
end
