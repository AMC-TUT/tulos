require 'rails_helper'

RSpec.describe "Levels", :type => :request do
  describe "GET /levels" do
    it "works! (now write some real specs)" do
      get levels_path
      expect(response.status).to be(200)
    end
  end
end
