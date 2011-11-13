require "spec_helper"

describe DownSizesController do
  describe "routing" do

    it "routes to #index" do
      get("/down_sizes").should route_to("down_sizes#index")
    end

    it "routes to #new" do
      get("/down_sizes/new").should route_to("down_sizes#new")
    end

    it "routes to #show" do
      get("/down_sizes/1").should route_to("down_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/down_sizes/1/edit").should route_to("down_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/down_sizes").should route_to("down_sizes#create")
    end

    it "routes to #update" do
      put("/down_sizes/1").should route_to("down_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/down_sizes/1").should route_to("down_sizes#destroy", :id => "1")
    end

  end
end
