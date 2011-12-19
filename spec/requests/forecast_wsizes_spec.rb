require 'spec_helper'

describe "ForecastWsizes" do
  describe "GET /forecast_wsizes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get forecast_wsizes_path
      response.status.should be(200)
    end
  end
end
