require 'spec_helper'

describe CallbacksController do
  context '#github' do
    # There are some omniauth magic there. Raw library code should not be tested
    it 'exists' do
      expect(subject).to respond_to(:github)
    end
  end
end
