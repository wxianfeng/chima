require 'spec_helper'

describe "weights/index.html.erb" do
  before(:each) do
    assign(:weights, [
      stub_model(Weight,
        :value => "9.99"
      ),
      stub_model(Weight,
        :value => "9.99"
      )
    ])
  end

  it "renders a list of weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
