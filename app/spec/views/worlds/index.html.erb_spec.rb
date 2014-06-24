require 'rails_helper'

RSpec.describe "worlds/index", :type => :view do
  before(:each) do
    assign(:worlds, [
      World.create!(
        :title => "Title",
        :description => "MyText",
        :player => 1
      ),
      World.create!(
        :title => "Title",
        :description => "MyText",
        :player => 1
      )
    ])
  end

  it "renders a list of worlds" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
