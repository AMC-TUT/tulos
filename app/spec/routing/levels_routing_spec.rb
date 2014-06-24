require "rails_helper"

RSpec.describe LevelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/levels").to route_to("levels#index")
    end

    it "routes to #new" do
      expect(:get => "/levels/new").to route_to("levels#new")
    end

    it "routes to #show" do
      expect(:get => "/levels/1").to route_to("levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/levels/1/edit").to route_to("levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/levels").to route_to("levels#create")
    end

    it "routes to #update" do
      expect(:put => "/levels/1").to route_to("levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/levels/1").to route_to("levels#destroy", :id => "1")
    end

  end
end
