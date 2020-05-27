require 'spec_helper'

RSpec.describe Job, type: :model do
  context 'validation tests' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:company) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:link) }
    it { should validate_presence_of(:location) }
  end
end
