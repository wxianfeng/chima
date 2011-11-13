require 'spec_helper'

describe "up_sizes/new.html.erb" do
  before(:each) do
    assign(:up_size, stub_model(UpSize,
      :chima_id => 1,
      :front_length => "9.99",
      :back_length => "9.99",
      :chest => "9.99",
      :waistline => "9.99",
      :lap => "9.99",
      :shoulder => "9.99",
      :sleeve => "9.99",
      :cage => "9.99",
      :fat => "9.99",
      :cuff => "9.99",
      :short_sleeve => "9.99",
      :neck => "9.99",
      :colby => "9.99",
      :sleeve_width => "9.99",
      :weight => "9.99"
    ).as_new_record)
  end

  it "renders new up_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => up_sizes_path, :method => "post" do
      assert_select "input#up_size_chima_id", :name => "up_size[chima_id]"
      assert_select "input#up_size_front_length", :name => "up_size[front_length]"
      assert_select "input#up_size_back_length", :name => "up_size[back_length]"
      assert_select "input#up_size_chest", :name => "up_size[chest]"
      assert_select "input#up_size_waistline", :name => "up_size[waistline]"
      assert_select "input#up_size_lap", :name => "up_size[lap]"
      assert_select "input#up_size_shoulder", :name => "up_size[shoulder]"
      assert_select "input#up_size_sleeve", :name => "up_size[sleeve]"
      assert_select "input#up_size_cage", :name => "up_size[cage]"
      assert_select "input#up_size_fat", :name => "up_size[fat]"
      assert_select "input#up_size_cuff", :name => "up_size[cuff]"
      assert_select "input#up_size_short_sleeve", :name => "up_size[short_sleeve]"
      assert_select "input#up_size_neck", :name => "up_size[neck]"
      assert_select "input#up_size_colby", :name => "up_size[colby]"
      assert_select "input#up_size_sleeve_width", :name => "up_size[sleeve_width]"
      assert_select "input#up_size_weight", :name => "up_size[weight]"
    end
  end
end
