require 'rails_helper'

RSpec.describe "levels/index", :type => :view do
  before(:each) do
    assign(:levels, [
      Level.create!(
        :type => 1,
        :decimal => ""
      ),
      Level.create!(
        :type => 1,
        :decimal => ""
      )
    ])
  end

  it "renders a list of levels" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
