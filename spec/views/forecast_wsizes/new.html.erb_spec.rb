require 'spec_helper'

describe "forecast_wsizes/new.html.erb" do
  before(:each) do
    assign(:forecast_wsize, stub_model(ForecastWsize,
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
    ).as_new_record)
  end

  it "renders new forecast_wsize form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forecast_wsizes_path, :method => "post" do
      assert_select "input#forecast_wsize_height", :name => "forecast_wsize[height]"
      assert_select "input#forecast_wsize_weight", :name => "forecast_wsize[weight]"
      assert_select "input#forecast_wsize_chest", :name => "forecast_wsize[chest]"
      assert_select "input#forecast_wsize_middle_chest", :name => "forecast_wsize[middle_chest]"
      assert_select "input#forecast_wsize_shoulder", :name => "forecast_wsize[shoulder]"
      assert_select "input#forecast_wsize_sleeve", :name => "forecast_wsize[sleeve]"
      assert_select "input#forecast_wsize_neck", :name => "forecast_wsize[neck]"
      assert_select "input#forecast_wsize_down_chest", :name => "forecast_wsize[down_chest]"
      assert_select "input#forecast_wsize_ass", :name => "forecast_wsize[ass]"
      assert_select "input#forecast_wsize_crosspiece", :name => "forecast_wsize[crosspiece]"
      assert_select "input#forecast_wsize_foot", :name => "forecast_wsize[foot]"
    end
  end
end
