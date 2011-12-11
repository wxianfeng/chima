# encoding:utf-8
class Admin::ModelsController < ApplicationController
  layout 'admin'

  def index
    if params[:brand_id]
      @models = Model.where(:brand_id=>params[:brand_id])
      opt = {}
      @models.each do |model|
        opt[model.id] = model.name
      end
      @sizes = Size.where(:brand_id=>params[:brand_id])
      size_opt = {}
      @sizes.each do |size|
        size_opt[size.id] = size.name
      end
      item_opt = {}
      @items = Item.where(:brand_id=>params[:brand_id])
      @items.each do |item|
        item_opt[item.id] = item.name
      end
      render :json => { status: 'ok',options: opt,size_options: size_opt,item_options: item_opt  } and return
    end
    @models = Model.all
  end

  # GET /models/1
  # GET /models/1.json
  def show
    @model = Model.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model }
    end
  end

  # GET /models/new
  # GET /models/new.json
  def new
    @model = Model.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @model }
    end
  end

  # GET /models/1/edit
  def edit
    @model = Model.find(params[:id])
  end

  # POST /models
  # POST /models.json
  def create
    @model = Model.new(params[:model])

    respond_to do |format|
      if @model.save
        format.html { redirect_to [:admin,@model], notice: 'Model was successfully created.' }
        format.json { render json: @model, status: :created, location: @model }
      else
        format.html { render action: "new" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /models/1
  # PUT /models/1.json
  def update
    @model = Model.find(params[:id])

    respond_to do |format|
      if @model.update_attributes(params[:model])
        format.html { redirect_to [:admin,@model], notice: 'Model was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @model = Model.find(params[:id])
    @model.destroy

    respond_to do |format|
      format.html { redirect_to admin_models_url }
      format.json { head :ok }
    end
  end
end
