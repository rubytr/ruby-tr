require 'spec_helper'
describe User do
  before(:all) do
    @user = FactoryBot.create(:user)
  end

  context 'non-specific tests' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end

  context 'format of email' do
    it 'should be correct' do
      @user.email = 'xyz'
      expect(@user.save).to be_falsey
    end
  end

  context 'gravatar_url field' do
    it 'should be set before save' do
      user = FactoryBot.create(:user)
      expect(user.gravatar_url).not_to be_empty
    end
  end
end
