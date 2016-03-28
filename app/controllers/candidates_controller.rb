class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def create
    @industry = Industry.find(params[:industry_id])
    @candidate = Candidate.new(candidate_params)
    @candidate.industry = @industry

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
      redirect_to root_path
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
                                      :zipcode,
                                      :radius,
                                      :veteran_status,
                                      :disability_status,
                                      :gender,
                                      :race,
                                      :industry_id

                                      )
  end
end
