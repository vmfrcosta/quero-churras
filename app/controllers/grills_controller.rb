class GrillsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_grill, only: [:show, :edit, :update, :destroy]

  def index
    @grills = Grill.all
  end

  def my_grills
    @grills = Grill.where(user: current_user)
  end

  def new
    @grill = Grill.new
  end

  def create
    @grill = Grill.new(grill_params)
    @grill.status = true
    @grill.user = current_user
    if @grill.save
      redirect_to grills_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @markers = [
      {
        lat: @grill.latitude,
        lng: @grill.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { grill: grill }),
        # image_url: helpers.asset_url('pokeball.png')
      }]

    # @grills = Grill.geocoded #returns grills with coordinates

    # @markers = @grills.map do |grill|
    #   {
    #     lat: grill.latitude,
    #     lng: grill.longitude
    #   }
    # end
    @review = Review.new
    @booking = Booking.new
  end

  def update
    if @grill.update(grill_params)
      redirect_to grill_path(@grill)
    else
      render :new
    end
  end

  def destroy
    @grill.destroy
    redirect_to grills_path
  end

  def nearby
    @address = "brazil #{params[:address]}"
    @grill = Grill.new(name: 'tanto faz', description: 'não importa', address: @address, grills_type: 'carvão', price: 1, status: true)
    @grill.geocode
    @coordinates = [@grill.latitude, @grill.longitude]
    # raise
    # mapbox_info = JSON.parse(open("https://api.mapbox.com/geocoding/v5/mapbox.places/#{@address}.json?access_token=pk.eyJ1Ijoidm1mcmNvc3RhIiwiYSI6ImNrMmdmd2d3eDB1a3kzZHAweG45eHdodjgifQ.0VkfpeZaDQ86klNCbtxmxQ").read)
    # @coordinates = mapbox_info['features'][1]['center'].reverse
    @grills = Grill.near(@coordinates, 100).sort_by { |grill| grill.distance_from(@coordinates) }    # raise
  end

  private

  def grill_params
    params.require(:grill).permit(
      :name,
      :description,
      :address,
      :grills_type,
      :price,
      :status,
      photos_attributes: [:id, :url, :url_cache, :grill_id, :_destroy]
    )
  end

  def set_grill
    @grill = Grill.find(params[:id])
  end
end
