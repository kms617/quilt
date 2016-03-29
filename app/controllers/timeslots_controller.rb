class TimeslotsController < ApplicationController
  before_action :authenticate_recruiter!

  def index
    timeslots = Timeslot.all
    # @day = @timeslot.start_time.strftime("%d")
    @timeslots = timeslots.order(start_time: :asc)
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:start_time)
  end
end
