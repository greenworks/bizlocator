class AdTypesController < ApplicationController
  # GET /ad_types
  # GET /ad_types.json
  def index
    @ad_types = AdType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_types }
    end
  end

  # GET /ad_types/1
  # GET /ad_types/1.json
  def show
    @ad_type = AdType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_type }
    end
  end

  # GET /ad_types/new
  # GET /ad_types/new.json
  def new
    @ad_type = AdType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_type }
    end
  end

  # GET /ad_types/1/edit
  def edit
    @ad_type = AdType.find(params[:id])
  end

  # POST /ad_types
  # POST /ad_types.json
  def create
    @ad_type = AdType.new(params[:ad_type])

    respond_to do |format|
      if @ad_type.save
        format.html { redirect_to @ad_type, notice: 'Ad type was successfully created.' }
        format.json { render json: @ad_type, status: :created, location: @ad_type }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_types/1
  # PUT /ad_types/1.json
  def update
    @ad_type = AdType.find(params[:id])

    respond_to do |format|
      if @ad_type.update_attributes(params[:ad_type])
        format.html { redirect_to @ad_type, notice: 'Ad type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_types/1
  # DELETE /ad_types/1.json
  def destroy
    @ad_type = AdType.find(params[:id])
    @ad_type.destroy

    respond_to do |format|
      format.html { redirect_to ad_types_url }
      format.json { head :no_content }
    end
  end
end
