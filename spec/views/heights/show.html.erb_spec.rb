require 'spec_helper'

describe "heights/show.html.erb" do
  before(:each) do
    @height = assign(:height, stub_model(Height,
      :value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
