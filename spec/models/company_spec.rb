require 'spec_helper'

RSpec.describe Company, type: :model do
  context 'validations tests' do
    it { should belong_to(:user) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:sector) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:url) }
    it { should validate_uniqueness_of(:title).case_insensitive }
  end

  context '#create' do
    before do
      ENV['WEBHOOK_URL'] = 'https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXX'
      @company = FactoryBot.create(:company)
    end

    it 'send_notification after commit' do
      expect_any_instance_of(Slack::Notifier).to receive(:ping)
        .with("Yeni şirket eklendi: #{@company.title}").and_return(true)
      @company.send(:send_notification)
    end
  end
end
