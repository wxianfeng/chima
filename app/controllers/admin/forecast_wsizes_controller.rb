# encoding:utf-8
class Admin::ForecastWsizesController < ApplicationController
  layout 'admin'
  # GET /forecast_wsizes
  # GET /forecast_wsizes.json
  def index
    @forecast_wsizes = ForecastWsize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forecast_wsizes }
    end
  end

  # GET /forecast_wsizes/1
  # GET /forecast_wsizes/1.json
  def show
    @forecast_wsize = ForecastWsize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forecast_wsize }
    end
  end

  # GET /forecast_wsizes/new
  # GET /forecast_wsizes/new.json
  def new
    @forecast_wsize = ForecastWsize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forecast_wsize }
    end
  end

  # GET /forecast_wsizes/1/edit
  def edit
    @forecast_wsize = ForecastWsize.find(params[:id])
  end

  # POST /forecast_wsizes
  # POST /forecast_wsizes.json
  def create
    @forecast_wsize = ForecastWsize.new(params[:forecast_wsize])

    respond_to do |format|
      if @forecast_wsize.save
        format.html { redirect_to [:admin,@forecast_wsize], notice: 'Forecast wsize was successfully created.' }
        format.json { render json: @forecast_wsize, status: :created, location: @forecast_wsize }
      else
        format.html { render action: "new" }
        format.json { render json: @forecast_wsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forecast_wsizes/1
  # PUT /forecast_wsizes/1.json
  def update
    @forecast_wsize = ForecastWsize.find(params[:id])

    respond_to do |format|
      if @forecast_wsize.update_attributes(params[:forecast_wsize])
        format.html { redirect_to [:admin,@forecast_wsize], notice: 'Forecast wsize was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @forecast_wsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forecast_wsizes/1
  # DELETE /forecast_wsizes/1.json
  def destroy
    @forecast_wsize = ForecastWsize.find(params[:id])
    @forecast_wsize.destroy

    respond_to do |format|
      format.html { redirect_to admin_forecast_wsizes_url }
      format.json { head :ok }
    end
  end
end
