require 'spec_helper'

describe Company do
  it { should belong_to(:user) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:sector) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
end
