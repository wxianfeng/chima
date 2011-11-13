require 'spec_helper'

describe "down_sizes/index.html.erb" do
  before(:each) do
    assign(:down_sizes, [
      stub_model(DownSize,
        :chima_id => 1,
        :chest => "9.99",
        :ass => "9.99",
        :leng => "9.99",
        :total => "9.99",
        :crosspiece => "9.99",
        :before_weaves => "9.99",
        :back_weaves => "9.99",
        :knee => "9.99",
        :kukou => "9.99",
        :weight => "9.99"
      ),
      stub_model(DownSize,
        :chima_id => 1,
        :chest => "9.99",
        :ass => "9.99",
        :leng => "9.99",
        :total => "9.99",
        :crosspiece => "9.99",
        :before_weaves => "9.99",
        :back_weaves => "9.99",
        :knee => "9.99",
        :kukou => "9.99",
        :weight => "9.99"
      )
    ])
  end

  it "renders a list of down_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
