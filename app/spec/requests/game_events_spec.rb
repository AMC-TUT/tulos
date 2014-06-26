require 'rails_helper'

RSpec.describe "GameEvents", :type => :request do
  describe "GET /game_events" do
    it "works! (now write some real specs)" do
      get game_events_path
      expect(response.status).to be(200)
    end
  end
end
