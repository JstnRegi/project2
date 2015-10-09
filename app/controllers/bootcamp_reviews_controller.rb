class BootcampReviewsController < ApplicationController

  def index

    bootcampId = params[:id]
    @bootcamp = Bootcamp.find_by_id(bootcampId)
    @reviews = @bootcamp.bootcamp_reviews

  end

  def show
    

  end

  def edit
    id = params[:id]
    @bootcamp_review = BootcampReview.find_by_id(id)
  end

  def update
    # binding.pry
    reviewId = params[:id]
    review = BootcampReview.find_by_id(reviewId)
    userId = review.user_id

    updated_attributes = params.permit(:content, :hired, :worthit, :campus, :jobhelp, :location)
    review.update_attributes(updated_attributes)
    review.save

    render text: "/users/#{userId}/"
  end

  def destroy
  end

end
