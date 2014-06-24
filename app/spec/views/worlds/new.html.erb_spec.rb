require 'rails_helper'

RSpec.describe "worlds/new", :type => :view do
  before(:each) do
    assign(:world, World.new(
      :title => "MyString",
      :description => "MyText",
      :player => 1
    ))
  end

  it "renders new world form" do
    render

    assert_select "form[action=?][method=?]", worlds_path, "post" do

      assert_select "input#world_title[name=?]", "world[title]"

      assert_select "textarea#world_description[name=?]", "world[description]"

      assert_select "input#world_player[name=?]", "world[player]"
    end
  end
end
