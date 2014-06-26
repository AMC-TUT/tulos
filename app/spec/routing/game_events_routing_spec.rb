require "rails_helper"

RSpec.describe GameEventsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_events").to route_to("game_events#index")
    end

    it "routes to #new" do
      expect(:get => "/game_events/new").to route_to("game_events#new")
    end

    it "routes to #show" do
      expect(:get => "/game_events/1").to route_to("game_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/game_events/1/edit").to route_to("game_events#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/game_events").to route_to("game_events#create")
    end

    it "routes to #update" do
      expect(:put => "/game_events/1").to route_to("game_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_events/1").to route_to("game_events#destroy", :id => "1")
    end

  end
end
