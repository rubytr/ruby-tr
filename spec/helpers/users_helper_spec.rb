require 'spec_helper'

RSpec.describe UsersHelper, type: :helper do
  context '#url_with_protocol' do
    describe '#url_with_protocol' do
      it 'returns url with protocol if url was plain' do
        user = FactoryBot.build(:user)
        expect(helper.url_with_protocol(user.web))
          .to eq('http://www.abidikgubidik.blogger.com')
      end

      it 'returns url directly if url is already with protocol' do
        user = FactoryBot.build(:user, web: 'https://www.abidikgubidik.blogger.com')
        expect(helper.url_with_protocol(user.web))
          .to eq('https://www.abidikgubidik.blogger.com')
      end

      it 'returns # if web url is not provided' do
        user = FactoryBot.build(:user, web: nil)
        expect(helper.url_with_protocol(user.web))
          .to eq('#')
      end
    end
  end

  context 'other helpers except url_with_protocol' do
    before do
      @user = FactoryBot.build(:user)
    end

    # rubocop:disable Layout/LineLength
    describe '#gravatar_picture' do
      it 'returns gravatar_picture of user' do
        expect(helper.gravatar_picture(@user))
          .to eq('<img width="125" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=250" />')
      end
    end
    # rubocop:enable Layout/LineLength

    describe '#twitter_url' do
      it 'returns twitter_url of user' do
        expect(helper.twitter_url(@user)).to eq("http://twitter.com/#{@user.twitter}")
      end
    end

    describe '#github_url' do
      it 'returns github_url of user' do
        expect(helper.github_url(@user)).to eq("http://github.com/#{@user.github}")
      end
    end
  end
end
