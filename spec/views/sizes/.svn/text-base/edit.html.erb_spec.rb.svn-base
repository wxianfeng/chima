require 'spec_helper'

describe "sizes/edit.html.erb" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :brand_id => 1,
      :name => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizes_path(@size), :method => "post" do
      assert_select "input#size_brand_id", :name => "size[brand_id]"
      assert_select "input#size_name", :name => "size[name]"
      assert_select "input#size_category", :name => "size[category]"
    end
  end
end
