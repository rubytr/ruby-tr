require 'spec_helper'
describe User do
  before(:all) do
    @user = FactoryGirl.create(:user)
  end

  context 'non-specific tests' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  context 'format of email' do
    it 'should be correct' do
      @user.email = 'xyz'
      expect(@user.save).to be_falsey
    end
  end

  context 'gravatar_url field' do
    it 'should be set before save' do
      user = FactoryGirl.create(:user)
      user.gravatar_url.should_not be_empty
    end
  end

  context 'humanizer' do
    it 'should check user is human or not on create' do
      user = FactoryGirl.build(:user, bypass_humanizer: false)
      user.save
      user.errors.full_messages.should include('Humanizer answer İnsan değilsin ey yaratık :D')
    end
  end
end
