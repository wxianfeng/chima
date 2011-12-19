require 'spec_helper'

describe "forecast_msizes/edit.html.erb" do
  before(:each) do
    @forecast_msize = assign(:forecast_msize, stub_model(ForecastMsize,
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
    ))
  end

  it "renders the edit forecast_msize form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forecast_msizes_path(@forecast_msize), :method => "post" do
      assert_select "input#forecast_msize_height", :name => "forecast_msize[height]"
      assert_select "input#forecast_msize_weight", :name => "forecast_msize[weight]"
      assert_select "input#forecast_msize_chest", :name => "forecast_msize[chest]"
      assert_select "input#forecast_msize_middle_chest", :name => "forecast_msize[middle_chest]"
      assert_select "input#forecast_msize_shoulder", :name => "forecast_msize[shoulder]"
      assert_select "input#forecast_msize_sleeve", :name => "forecast_msize[sleeve]"
      assert_select "input#forecast_msize_neck", :name => "forecast_msize[neck]"
      assert_select "input#forecast_msize_down_chest", :name => "forecast_msize[down_chest]"
      assert_select "input#forecast_msize_ass", :name => "forecast_msize[ass]"
      assert_select "input#forecast_msize_crosspiece", :name => "forecast_msize[crosspiece]"
      assert_select "input#forecast_msize_foot", :name => "forecast_msize[foot]"
    end
  end
end
