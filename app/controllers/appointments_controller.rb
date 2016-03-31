class AppointmentsController < ApplicationController
  before_action :authenticate_recruiter!, only: [:new, :create]

  def index
    @date = date
    @yesterday = yesterday
    @tomorrow = tomorrow
    timeslots = Timeslot.all
    @timeslots = timeslots.order(start_time: :asc)
    @appointments = Appointment.all
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    Appointment.update(candidate_id: current_candidate.id)
    # flash[:notice] = "Availability updated!"
    redirect_to(:back)
  end

  def new
    @date = date
    @yesterday = yesterday
    @tomorrow = tomorrow
    @appointment = Appointment.new
    timeslots = Timeslot.all
    @timeslots = timeslots.order(start_time: :asc)
  end

  def create
    Appointment.all.each do |a|
      if params[:available_times].exclude?(a.timeslot_id)
        Appointment.destroy_all(timeslot_id: a.timeslot_id, recruiter_id: current_recruiter.id)
      end
    end
    params[:available_times].each do |appt|
      unless Appointment.exists?(timeslot_id: appt)
        Appointment.create(timeslot_id: appt, recruiter_id: current_recruiter.id)
      end
    end
    # binding.pry
    # flash[:notice] = "Availability updated!"
    redirect_to(:back)
  end

  private

  def date(date_arg = nil)
    return Date.parse(date_arg) if date_arg
    Date.parse("#{params[:year]}-#{params[:month]}-#{params[:day]}")
  end

  def yesterday
    {
      day: (date - 1.day).day,
      month: (date - 1.day).month,
      year:  (date - 1.day).year
    }
  end

  def tomorrow
    {
      day: (date + 1.day).day,
      month: (date + 1.day).month,
      year:  (date + 1.day).year
    }
  end

  def appointment_params
    params.require(:appointment).permit(:timeslot_id)
    # .merge(reviewer_id: current_reviewer.id)
  end
end
