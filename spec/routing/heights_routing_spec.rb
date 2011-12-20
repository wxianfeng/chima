require "spec_helper"

describe HeightsController do
  describe "routing" do

    it "routes to #index" do
      get("/heights").should route_to("heights#index")
    end

    it "routes to #new" do
      get("/heights/new").should route_to("heights#new")
    end

    it "routes to #show" do
      get("/heights/1").should route_to("heights#show", :id => "1")
    end

    it "routes to #edit" do
      get("/heights/1/edit").should route_to("heights#edit", :id => "1")
    end

    it "routes to #create" do
      post("/heights").should route_to("heights#create")
    end

    it "routes to #update" do
      put("/heights/1").should route_to("heights#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/heights/1").should route_to("heights#destroy", :id => "1")
    end

  end
end
