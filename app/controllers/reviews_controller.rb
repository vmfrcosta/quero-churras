class ReviewsController < ApplicationController
  before_action :set_grill

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.grill = Grill.find(params[:grill_id])
    @review.user = current_user
    if @review.save
      redirect_to grill_path(@review.grill)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end

  def set_grill
    @grill = Grill.find(params[:grill_id])
  end
end
