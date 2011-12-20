require 'spec_helper'

describe "heights/edit.html.erb" do
  before(:each) do
    @height = assign(:height, stub_model(Height,
      :value => 1
    ))
  end

  it "renders the edit height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heights_path(@height), :method => "post" do
      assert_select "input#height_value", :name => "height[value]"
    end
  end
end
