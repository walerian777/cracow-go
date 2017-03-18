class LocationsTagsController < ApplicationController
  before_action :set_locations_tag, only: [:show, :edit, :update, :destroy]

  # GET /locations_tags
  # GET /locations_tags.json
  def index
    @locations_tags = LocationsTag.all
  end

  # GET /locations_tags/1
  # GET /locations_tags/1.json
  def show
  end

  # GET /locations_tags/new
  def new
    @locations_tag = LocationsTag.new
  end

  # GET /locations_tags/1/edit
  def edit
  end

  # POST /locations_tags
  # POST /locations_tags.json
  def create
    @locations_tag = LocationsTag.new(locations_tag_params)

    respond_to do |format|
      if @locations_tag.save
        format.html { redirect_to @locations_tag, notice: 'Locations tag was successfully created.' }
        format.json { render :show, status: :created, location: @locations_tag }
      else
        format.html { render :new }
        format.json { render json: @locations_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations_tags/1
  # PATCH/PUT /locations_tags/1.json
  def update
    respond_to do |format|
      if @locations_tag.update(locations_tag_params)
        format.html { redirect_to @locations_tag, notice: 'Locations tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @locations_tag }
      else
        format.html { render :edit }
        format.json { render json: @locations_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations_tags/1
  # DELETE /locations_tags/1.json
  def destroy
    @locations_tag.destroy
    respond_to do |format|
      format.html { redirect_to locations_tags_url, notice: 'Locations tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locations_tag
      @locations_tag = LocationsTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locations_tag_params
      params.fetch(:locations_tag, {})
    end
end
