require 'rails_helper'

RSpec.describe Company, type: :model do
  context 'notification' do
    it "is sent when new company is created" do
      admin_user = FactoryGirl.create :admin_user
      company = FactoryGirl.create :company
      expect(admin_user.notifications.unopened_only.count).to eq(0)
      company.notify :admin_users
      expect(admin_user.notifications.unopened_only.count).to eq(1)
      expect(admin_user.notifications.unopened_only.latest.notifiable).to eq(company)
    end
  end
end
