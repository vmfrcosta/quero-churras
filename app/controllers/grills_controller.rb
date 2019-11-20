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
    @review = Review.new
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
