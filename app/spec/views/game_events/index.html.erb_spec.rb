require 'rails_helper'

RSpec.describe "game_events/index", :type => :view do
  before(:each) do
    assign(:game_events, [
      GameEvent.create!(
        :user => nil,
        :world => nil,
        :movement => 1,
        :health => 2
      ),
      GameEvent.create!(
        :user => nil,
        :world => nil,
        :movement => 1,
        :health => 2
      )
    ])
  end

  it "renders a list of game_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
