class GrillsController < ApplicationController
  def index
    @grills = Grill.all
  end

  def show
    @grill = Grill.find(params[:id])
  end

  def new
    @grill = Grill.new
  end

  def create
    @grill = Grill.new(grill_params)
    if @grill.save
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
    params.require(:grill)
  end

  def set_grill
    @grill = grill.find(params[:id])
  end

end
