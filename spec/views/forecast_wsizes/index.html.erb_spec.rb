require 'spec_helper'

describe "forecast_wsizes/index.html.erb" do
  before(:each) do
    assign(:forecast_wsizes, [
      stub_model(ForecastWsize,
        :height => 1,
        :weight => "9.99",
        :chest => "9.99",
        :middle_chest => "9.99",
        :shoulder => "9.99",
        :sleeve => "9.99",
        :neck => "9.99",
        :down_chest => "9.99",
        :ass => "9.99",
        :crosspiece => "9.99",
        :foot => "9.99"
      ),
      stub_model(ForecastWsize,
        :height => 1,
        :weight => "9.99",
        :chest => "9.99",
        :middle_chest => "9.99",
        :shoulder => "9.99",
        :sleeve => "9.99",
        :neck => "9.99",
        :down_chest => "9.99",
        :ass => "9.99",
        :crosspiece => "9.99",
        :foot => "9.99"
      )
    ])
  end

  it "renders a list of forecast_wsizes" do
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
