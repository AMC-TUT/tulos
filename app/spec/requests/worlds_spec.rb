require 'rails_helper'

RSpec.describe "Worlds", :type => :request do
  describe "GET /worlds" do
    it "works! (now write some real specs)" do
      get worlds_path
      expect(response.status).to be(200)
    end
  end
end
