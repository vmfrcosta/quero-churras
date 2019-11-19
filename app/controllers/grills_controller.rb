class GrillsController < ApplicationController
  before_action :set_grill, only: [:show, :edit, :update]

  def index
    @grills = Grill.all
  end

  def new
    @grill = Grill.new
  end

  def create
    @grill = Grill.new(grill_params)
    if @grill.save
      redirect_to grill_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @grill.update(grill_params)
    redirect_to grills_path(@grills)
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
      :status
    )
  end

  def set_grill
    @grill = Grill.find(params[:id])
  end
end
