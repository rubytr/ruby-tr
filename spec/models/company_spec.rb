require 'spec_helper'

describe Company do

  it { should belong_to(:user) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:sector) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:url) }
  it { should validate_uniqueness_of(:title) }

end
