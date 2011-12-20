require 'spec_helper'

describe "heights/new.html.erb" do
  before(:each) do
    assign(:height, stub_model(Height,
      :value => 1
    ).as_new_record)
  end

  it "renders new height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heights_path, :method => "post" do
      assert_select "input#height_value", :name => "height[value]"
    end
  end
end
