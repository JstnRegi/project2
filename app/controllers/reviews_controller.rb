class ReviewsController < ApplicationController

  def index
  	@bootcamp_reviews = BootcampReview.all
  	render json: @bootcamp_reviews
  end

  def new
  	@bootcamp_review = BootcampReview.new
  	@instructor_review = InstructorReview.new
  end

  def create
  	#make checks in front end before even submitting
    # binding.pry
    bcContent = params.require(:bootcamp_review).require(:"0").permit(:value)[:value]

    bcReviewInfo = {
    	bcCampus: params[:campus],
      bcId: params[:bootcamp_id],
      bcWorth: params[:worthit],
      bcJobHelp: params[:jobsupp],
      bcLocation: params[:locationrate],
      bcHired: params[:hired]
    }

  	bcReview = BootcampReview.create(bcReviewInfo)
    bc = Bootcamp.find_by_id(bcId)
    user = current_user
    bc.bootcamp_reviews << bcReview
    user.bootcamp_reviews << bcReview
  	# instructorContent = params.require(:instructor_review).require(:"0").permit(:value)[:value]
  	# instructorReviewInfo = {content: instructorContent}
  	# instructorReview = InstructorReview.create(instructorReviewInfo)


    render text: "/bootcamps/#{bc.id}" ## change to JSON
  	# render text: "/bootcamp_reviews"
  end

  def show
    @reviews = BootcampReview.all
    render :show
  end

end
