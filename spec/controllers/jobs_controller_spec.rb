require 'spec_helper'

RSpec.describe JobsController, type: :controller do
  # context 'post: create' do
  #   it 'should redirect to users path with correct params' do
  #     Job.any_instance.stub(:bypass_humanizer).and_return(true)
  #     post :create, job: FactoryBot.attributes_for(:job)
  #     response.should redirect_to jobs_path
  #   end
  #   it 'should render new page with incorrect params' do
  #     post :create, job: FactoryBot.attributes_for(:job, name: "")
  #     response.should render_template(:new)
  #   end
  #   it 'should set published false' do
  #     Job.any_instance.stub(:bypass_humanizer).and_return(true)
  #     post :create, job: FactoryBot.attributes_for(:job)
  #     Job.last.published.should be false
  #   end
  # end
end
