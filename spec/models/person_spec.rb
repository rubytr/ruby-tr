require 'spec_helper'

describe Person do

  before(:all) do
    @person = FactoryGirl.create(:person)
  end

  context 'non-specific tests' do
    it{ should validate_presence_of(:name) }
    it{ should validate_presence_of(:email) }
    it{ should validate_uniqueness_of(:name) }
    it{ should validate_uniqueness_of(:email) }
  end

  context 'format of' do
    it 'email should be correct' do
      @person.email = "xyz"
      expect(@person.save).to be_falsey
    end
  end

  context 'get_gravatar_url method' do
    it 'should be called before save' do
      @person.should_receive(:get_gravatar_url)
      @person.save
    end
  end

  context 'humanizer' do
    it 'should check user is human or not on create' do
      person = FactoryGirl.build(:person, bypass_humanizer: false)
      person.save
      person.errors.full_messages.should include("Humanizer answer İnsan değilsin ey yaratık :D")
    end
  end

end