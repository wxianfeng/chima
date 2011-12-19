require "spec_helper"

describe ForecastWsizesController do
  describe "routing" do

    it "routes to #index" do
      get("/forecast_wsizes").should route_to("forecast_wsizes#index")
    end

    it "routes to #new" do
      get("/forecast_wsizes/new").should route_to("forecast_wsizes#new")
    end

    it "routes to #show" do
      get("/forecast_wsizes/1").should route_to("forecast_wsizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forecast_wsizes/1/edit").should route_to("forecast_wsizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forecast_wsizes").should route_to("forecast_wsizes#create")
    end

    it "routes to #update" do
      put("/forecast_wsizes/1").should route_to("forecast_wsizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forecast_wsizes/1").should route_to("forecast_wsizes#destroy", :id => "1")
    end

  end
end
