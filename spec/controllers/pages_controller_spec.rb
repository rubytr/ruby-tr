require 'spec_helper'

RSpec.describe PagesController, type: :controller do
  context '#main' do
    before do
      admin_user = FactoryBot.build(:admin_user)
      FactoryBot.create_list :announcement, 5, admin_user: admin_user
    end

    it 'should redirect root to pages/main' do
      expect(get: '/').to route_to(controller: 'pages', action: 'main')
    end

    it 'should list five announcements' do
      get :main
      expect(response).to render_template('pages/main')
      expect(assigns(:announcements).count).to eq 5
      expect(response).to be_successful
    end
  end

  context '#events' do
    before do
      response_body = [{ 'name' => 'Rspec ile test yazımı',
                         'status' => 'upcoming',
                         'local_date' => '2020-05-26',
                         'local_time' => '20:00',
                         'waitlist_count' => 0,
                         'yes_rsvp_count' => 50,
                         'link' => 'https://www.meetup.com/Ruby-Turkiye/events/21312932/',
                         'description' => '<p>Bu etkinliği kaçırmayın.</p> ',
                         'how_to_find_us' => 'https://www.youtube.com/watch?v=jNQXAC9IVRw',
                         'visibility' => 'public',
                         'member_pay_fee' => false }]

      stub_request(:get, 'https://api.meetup.com/Ruby-Turkiye/events?page=20&photo-host=public&sign=true')
        .with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Host' => 'api.meetup.com',
            'User-Agent' => 'Ruby'
          }
        )
        .to_return(status: 200, body: response_body.to_json, headers: {})
    end

    it 'should list events from external meetup API' do
      get :events
      expect(assigns(:events).count).to eq 1
      expect(response).to be_successful
    end
  end
end
