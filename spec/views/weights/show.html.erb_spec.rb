require 'spec_helper'

describe "weights/show.html.erb" do
  before(:each) do
    @weight = assign(:weight, stub_model(Weight,
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
