require 'spec_helper'

describe "down_sizes/new.html.erb" do
  before(:each) do
    assign(:down_size, stub_model(DownSize,
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
    ).as_new_record)
  end

  it "renders new down_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => down_sizes_path, :method => "post" do
      assert_select "input#down_size_chima_id", :name => "down_size[chima_id]"
      assert_select "input#down_size_chest", :name => "down_size[chest]"
      assert_select "input#down_size_ass", :name => "down_size[ass]"
      assert_select "input#down_size_leng", :name => "down_size[leng]"
      assert_select "input#down_size_total", :name => "down_size[total]"
      assert_select "input#down_size_crosspiece", :name => "down_size[crosspiece]"
      assert_select "input#down_size_before_weaves", :name => "down_size[before_weaves]"
      assert_select "input#down_size_back_weaves", :name => "down_size[back_weaves]"
      assert_select "input#down_size_knee", :name => "down_size[knee]"
      assert_select "input#down_size_kukou", :name => "down_size[kukou]"
      assert_select "input#down_size_weight", :name => "down_size[weight]"
    end
  end
end
