require 'spec_helper'

RSpec.describe Announcement, type: :model do
  context '#create' do
    before do
      admin_user = FactoryBot.build(:admin_user)
      @announcement = FactoryBot.build(:announcement, admin_user: admin_user)
    end

    it 'is invalid without title' do
      @announcement.title = nil
      expect(@announcement).not_to be_valid
    end

    it 'is invalid without content' do
      @announcement.content = nil
      expect(@announcement).not_to be_valid
    end
  end
end
