require 'rails_helper'

RSpec.describe "levels/new", :type => :view do
  before(:each) do
    assign(:level, Level.new(
      :type => 1,
      :decimal => ""
    ))
  end

  it "renders new level form" do
    render

    assert_select "form[action=?][method=?]", levels_path, "post" do

      assert_select "input#level_type[name=?]", "level[type]"

      assert_select "input#level_decimal[name=?]", "level[decimal]"
    end
  end
end
