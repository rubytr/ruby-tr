require 'spec_helper'

RSpec.describe Announcement, type: :model do
  context 'validations tests' do
    it { should belong_to(:admin_user) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  context '#create' do
    before do
      admin_user = FactoryBot.build(:admin_user)
      @announcement = FactoryBot.build(:announcement, admin_user:)
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
