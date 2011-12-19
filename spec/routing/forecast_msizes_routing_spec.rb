require "spec_helper"

describe ForecastMsizesController do
  describe "routing" do

    it "routes to #index" do
      get("/forecast_msizes").should route_to("forecast_msizes#index")
    end

    it "routes to #new" do
      get("/forecast_msizes/new").should route_to("forecast_msizes#new")
    end

    it "routes to #show" do
      get("/forecast_msizes/1").should route_to("forecast_msizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forecast_msizes/1/edit").should route_to("forecast_msizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forecast_msizes").should route_to("forecast_msizes#create")
    end

    it "routes to #update" do
      put("/forecast_msizes/1").should route_to("forecast_msizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forecast_msizes/1").should route_to("forecast_msizes#destroy", :id => "1")
    end

  end
end
