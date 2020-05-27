require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  before(:context) do
    @default_per_page = Kaminari.config.default_per_page
    Kaminari.config.default_per_page = 2
  end

  context '#index' do
    before do
      FactoryBot.create_list :user, 3
    end

    # Due to problems on database_cleaner do not change the order of testing here
    it 'should change page and see 1 record' do
      get :index, params: { page: 2 }
      expect(response).to be_successful
      expect(assigns(:users).size).to eq 1
    end

    it 'should be success' do
      get :index
      expect(response).to be_successful
    end

    it 'should see 2 records' do
      get :index
      expect(response).to be_successful
      expect(assigns(:users).size).to eq 2
    end
  end

  after(:context) do
    Kaminari.config.default_per_page = @default_per_page
  end
end
