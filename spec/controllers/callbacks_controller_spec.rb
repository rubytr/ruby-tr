require 'spec_helper'

RSpec.describe CallbacksController, type: :controller do
  context '#github' do
    # There are some omniauth magic there. Raw library code should not be tested
    it 'exists' do
      expect(subject).to respond_to(:github)
    end
  end
end
