require 'spec_helper'

describe "sizes/show.html.erb" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :brand_id => 1,
      :name => "Name",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
  end
end
