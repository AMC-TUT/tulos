require 'rails_helper'

RSpec.describe "game_events/show", :type => :view do
  before(:each) do
    @game_event = assign(:game_event, GameEvent.create!(
      :user => nil,
      :world => nil,
      :movement => 1,
      :health => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
