require 'rails_helper'

RSpec.describe "game_events/new", :type => :view do
  before(:each) do
    assign(:game_event, GameEvent.new(
      :user => nil,
      :world => nil,
      :movement => 1,
      :health => 1
    ))
  end

  it "renders new game_event form" do
    render

    assert_select "form[action=?][method=?]", game_events_path, "post" do

      assert_select "input#game_event_user_id[name=?]", "game_event[user_id]"

      assert_select "input#game_event_world_id[name=?]", "game_event[world_id]"

      assert_select "input#game_event_movement[name=?]", "game_event[movement]"

      assert_select "input#game_event_health[name=?]", "game_event[health]"
    end
  end
end
