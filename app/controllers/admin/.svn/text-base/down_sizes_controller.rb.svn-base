class Admin::DownSizesController < ApplicationController
  layout 'admin'
  # GET /down_sizes
  # GET /down_sizes.json
  def index
    @down_sizes = DownSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @down_sizes }
    end
  end

  # GET /down_sizes/1
  # GET /down_sizes/1.json
  def show
    @down_size = DownSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @down_size }
    end
  end

  # GET /down_sizes/new
  # GET /down_sizes/new.json
  def new
    @down_size = DownSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @down_size }
    end
  end

  # GET /down_sizes/1/edit
  def edit
    @down_size = DownSize.find(params[:id])
  end

  # POST /down_sizes
  # POST /down_sizes.json
  def create
    @down_size = DownSize.new(params[:down_size])

    respond_to do |format|
      if @down_size.save
        format.html { redirect_to [:admin,@down_size], notice: 'Down size was successfully created.' }
        format.json { render json: @down_size, status: :created, location: @down_size }
      else
        format.html { render action: "new" }
        format.json { render json: @down_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /down_sizes/1
  # PUT /down_sizes/1.json
  def update
    @down_size = DownSize.find(params[:id])

    respond_to do |format|
      if @down_size.update_attributes(params[:down_size])
        format.html { redirect_to [:admin,@down_size], notice: 'Down size was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @down_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /down_sizes/1
  # DELETE /down_sizes/1.json
  def destroy
    @down_size = DownSize.find(params[:id])
    @down_size.destroy

    respond_to do |format|
      format.html { redirect_to admin_down_sizes_url }
      format.json { head :ok }
    end
  end
end
