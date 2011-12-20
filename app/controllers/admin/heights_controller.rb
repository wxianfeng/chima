# encoding:utf-8
class Admin::HeightsController < ApplicationController
  layout 'admin'
  # GET /heights
  # GET /heights.json
  def index
    @heights = Height.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @heights }
    end
  end

  # GET /heights/1
  # GET /heights/1.json
  def show
    @height = Height.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @height }
    end
  end

  # GET /heights/new
  # GET /heights/new.json
  def new
    @height = Height.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @height }
    end
  end

  # GET /heights/1/edit
  def edit
    @height = Height.find(params[:id])
  end

  # POST /heights
  # POST /heights.json
  def create
    @height = Height.new(params[:height])

    respond_to do |format|
      if @height.save
        format.html { redirect_to [:admin,@height], notice: 'Height was successfully created.' }
        format.json { render json: @height, status: :created, location: @height }
      else
        format.html { render action: "new" }
        format.json { render json: @height.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /heights/1
  # PUT /heights/1.json
  def update
    @height = Height.find(params[:id])

    respond_to do |format|
      if @height.update_attributes(params[:height])
        format.html { redirect_to [:admin,@height], notice: 'Height was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @height.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heights/1
  # DELETE /heights/1.json
  def destroy
    @height = Height.find(params[:id])
    @height.destroy

    respond_to do |format|
      format.html { redirect_to admin_heights_url }
      format.json { head :ok }
    end
  end
end
