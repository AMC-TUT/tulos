require 'rails_helper'

RSpec.describe "worlds/edit", :type => :view do
  before(:each) do
    @world = assign(:world, World.create!(
      :title => "MyString",
      :description => "MyText",
      :player => 1
    ))
  end

  it "renders the edit world form" do
    render

    assert_select "form[action=?][method=?]", world_path(@world), "post" do

      assert_select "input#world_title[name=?]", "world[title]"

      assert_select "textarea#world_description[name=?]", "world[description]"

      assert_select "input#world_player[name=?]", "world[player]"
    end
  end
end
