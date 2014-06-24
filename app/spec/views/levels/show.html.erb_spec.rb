require 'rails_helper'

RSpec.describe "levels/show", :type => :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :type => 1,
      :decimal => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
