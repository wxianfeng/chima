require 'spec_helper'

describe "heights/index.html.erb" do
  before(:each) do
    assign(:heights, [
      stub_model(Height,
        :value => 1
      ),
      stub_model(Height,
        :value => 1
      )
    ])
  end

  it "renders a list of heights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
