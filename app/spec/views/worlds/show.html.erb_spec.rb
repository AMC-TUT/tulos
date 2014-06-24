require 'rails_helper'

RSpec.describe "worlds/show", :type => :view do
  before(:each) do
    @world = assign(:world, World.create!(
      :title => "Title",
      :description => "MyText",
      :player => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
