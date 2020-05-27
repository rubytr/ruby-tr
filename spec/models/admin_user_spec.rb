require 'spec_helper'

RSpec.describe AdminUser, type: :model do
  context 'validations tests' do
    it { should have_many(:announcements) }
  end
end
