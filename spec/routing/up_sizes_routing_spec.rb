require "spec_helper"

describe UpSizesController do
  describe "routing" do

    it "routes to #index" do
      get("/up_sizes").should route_to("up_sizes#index")
    end

    it "routes to #new" do
      get("/up_sizes/new").should route_to("up_sizes#new")
    end

    it "routes to #show" do
      get("/up_sizes/1").should route_to("up_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/up_sizes/1/edit").should route_to("up_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/up_sizes").should route_to("up_sizes#create")
    end

    it "routes to #update" do
      put("/up_sizes/1").should route_to("up_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/up_sizes/1").should route_to("up_sizes#destroy", :id => "1")
    end

  end
end
