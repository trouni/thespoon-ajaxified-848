class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.json # by default, it renders the `create.json.jbuilder` (the json equivalent to `create.html.erb`)
      else
        format.html { render 'restaurants/show' }
        format.json # by default, it renders the `create.json.jbuilder`
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
