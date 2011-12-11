require 'spec_helper'

describe "models/edit.html.erb" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "MyString",
      :brand_id => 1
    ))
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => models_path(@model), :method => "post" do
      assert_select "input#model_name", :name => "model[name]"
      assert_select "input#model_brand_id", :name => "model[brand_id]"
    end
  end
end
