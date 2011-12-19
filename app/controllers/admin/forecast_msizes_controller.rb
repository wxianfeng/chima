# encoding:utf-8
class Admin::ForecastMsizesController < ApplicationController
  layout 'admin'
  # GET /forecast_msizes
  # GET /forecast_msizes.json
  def index
    @forecast_msizes = ForecastMsize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forecast_msizes }
    end
  end

  # GET /forecast_msizes/1
  # GET /forecast_msizes/1.json
  def show
    @forecast_msize = ForecastMsize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forecast_msize }
    end
  end

  # GET /forecast_msizes/new
  # GET /forecast_msizes/new.json
  def new
    @forecast_msize = ForecastMsize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forecast_msize }
    end
  end

  # GET /forecast_msizes/1/edit
  def edit
    @forecast_msize = ForecastMsize.find(params[:id])
  end

  # POST /forecast_msizes
  # POST /forecast_msizes.json
  def create
    @forecast_msize = ForecastMsize.new(params[:forecast_msize])

    respond_to do |format|
      if @forecast_msize.save
        format.html { redirect_to [:admin,@forecast_msize], notice: 'Forecast msize was successfully created.' }
        format.json { render json: [:admin,@forecast_msize], status: :created, location: @forecast_msize }
      else
        format.html { render action: "new" }
        format.json { render json: @forecast_msize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forecast_msizes/1
  # PUT /forecast_msizes/1.json
  def update
    @forecast_msize = ForecastMsize.find(params[:id])

    respond_to do |format|
      if @forecast_msize.update_attributes(params[:forecast_msize])
        format.html { redirect_to [:admin,@forecast_msize], notice: 'Forecast msize was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @forecast_msize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forecast_msizes/1
  # DELETE /forecast_msizes/1.json
  def destroy
    @forecast_msize = ForecastMsize.find(params[:id])
    @forecast_msize.destroy

    respond_to do |format|
      format.html { redirect_to admin_forecast_msizes_url }
      format.json { head :ok }
    end
  end
end
