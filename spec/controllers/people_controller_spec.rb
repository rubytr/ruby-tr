require 'spec_helper'

describe PeopleController do

  context 'get: index' do
    it 'should be success' do
      get :index
      response.should be_success
    end
  end

  context 'post: create' do
    it 'should redirect to people path with correct params' do
      Person.any_instance.stub(:bypass_humanizer).and_return(true)
      post :create, person: FactoryGirl.attributes_for(:person)
      response.should redirect_to people_path
    end
    it 'should render new page with incorrect params' do
      post :create, person: FactoryGirl.attributes_for(:person, name: "")
      response.should render_template(:new)
    end
  end

end