require 'spec_helper'

describe "sizes/edit.html.erb" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :brand_id => 1,
      :gender => 1,
      :where => 1,
      :category_id => 1,
      :model_id => 1
    ))
  end

  it "renders the edit size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizes_path(@size), :method => "post" do
      assert_select "input#size_brand_id", :name => "size[brand_id]"
      assert_select "input#size_gender", :name => "size[gender]"
      assert_select "input#size_where", :name => "size[where]"
      assert_select "input#size_category_id", :name => "size[category_id]"
      assert_select "input#size_model_id", :name => "size[model_id]"
    end
  end
end