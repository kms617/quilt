class ReviewersController < ApplicationController
  def show
    @reviewer = Reviewer.find(params[:id])
  end
end
