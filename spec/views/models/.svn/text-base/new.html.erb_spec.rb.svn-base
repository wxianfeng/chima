require 'spec_helper'

describe "models/new.html.erb" do
  before(:each) do
    assign(:model, stub_model(Model,
      :name => "MyString",
      :brand_id => 1
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => models_path, :method => "post" do
      assert_select "input#model_name", :name => "model[name]"
      assert_select "input#model_brand_id", :name => "model[brand_id]"
    end
  end
end
