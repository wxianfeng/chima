require "spec_helper"

describe SizesController do
  describe "routing" do

    it "routes to #index" do
      get("/sizes").should route_to("sizes#index")
    end

    it "routes to #new" do
      get("/sizes/new").should route_to("sizes#new")
    end

    it "routes to #show" do
      get("/sizes/1").should route_to("sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sizes/1/edit").should route_to("sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sizes").should route_to("sizes#create")
    end

    it "routes to #update" do
      put("/sizes/1").should route_to("sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sizes/1").should route_to("sizes#destroy", :id => "1")
    end

  end
end
