require 'rails_helper'

RSpec.describe "game_events/edit", :type => :view do
  before(:each) do
    @game_event = assign(:game_event, GameEvent.create!(
      :user => nil,
      :world => nil,
      :movement => 1,
      :health => 1
    ))
  end

  it "renders the edit game_event form" do
    render

    assert_select "form[action=?][method=?]", game_event_path(@game_event), "post" do

      assert_select "input#game_event_user_id[name=?]", "game_event[user_id]"

      assert_select "input#game_event_world_id[name=?]", "game_event[world_id]"

      assert_select "input#game_event_movement[name=?]", "game_event[movement]"

      assert_select "input#game_event_health[name=?]", "game_event[health]"
    end
  end
end
