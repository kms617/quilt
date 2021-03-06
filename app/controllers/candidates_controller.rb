class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def create
    @category = Category.find(params[:category_id])
    @candidate = Candidate.new(candidate_params)
    @candidate.category = @category

    if @candidate.save
      redirect_to edit_candidate_path(@candidate)
    else
      render :new
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update(candidate_params)
      redirect_to candidate_appointments_path(@candidate)
    else
      render :edit
    end

  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name,
                                      :last_name,
                                      :email,
                                      :phone,
                                      :date_available,
                                      :eligible,
                                      :zip,
                                      :travel_limit,
                                      :disability,
                                      :gender,
                                      :ethnicity,
                                      :veteran,
                                      :category_id

                                      )
  end
end
