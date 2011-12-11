class Admin::UpSizesController < ApplicationController
  layout 'admin'
  # GET /up_sizes
  # GET /up_sizes.json
  def index
    @up_sizes = UpSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @up_sizes }
    end
  end

  # GET /up_sizes/1
  # GET /up_sizes/1.json
  def show
    @up_size = UpSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @up_size }
    end
  end

  # GET /up_sizes/new
  # GET /up_sizes/new.json
  def new
    @up_size = UpSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @up_size }
    end
  end

  # GET /up_sizes/1/edit
  def edit
    @up_size = UpSize.find(params[:id])
  end

  # POST /up_sizes
  # POST /up_sizes.json
  def create
    @up_size = UpSize.new(params[:up_size])

    respond_to do |format|
      if @up_size.save
        format.html { redirect_to [:admin,@up_size], notice: 'Up size was successfully created.' }
        format.json { render json: @up_size, status: :created, location: @up_size }
      else
        format.html { render action: "new" }
        format.json { render json: @up_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /up_sizes/1
  # PUT /up_sizes/1.json
  def update
    @up_size = UpSize.find(params[:id])

    respond_to do |format|
      if @up_size.update_attributes(params[:up_size])
        format.html { redirect_to [:admin,@up_size], notice: 'Up size was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @up_size.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @up_size = UpSize.find(params[:id])
    @up_size.destroy

    respond_to do |format|
      format.html { redirect_to admin_up_sizes_url }
      format.json { head :ok }
    end
  end

  def new_batch
  end

  def create_batch
    params[:up_sizes].each do |up_size|
      record = UpSize.new(up_size)
      record.save
    end
    redirect_to admin_up_sizes_path
  end

end
