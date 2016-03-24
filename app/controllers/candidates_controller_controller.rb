class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name,
                                      :last_name,
                                      :email,
                                      :phone,
                                      :category,
                                      :date_available,
                                      :education,
                                      :languages,
                                      :background_check,
                                      :drug_screen,
                                      :work_type,
                                      :shifts,
                                      :category,
                                      :eligible,
                                      :specialty_ids,
                                      :zipcode,
                                      :radius
                                      )
  end
end
