class AppointmentsController < ApplicationController
  before_action :authenticate_recruiter!

  def new
    @date = Date.today
    @appointment = Appointment.new
    timeslots = Timeslot.all
    @timeslots = timeslots.order(start_time: :asc)
  end

  def create
    Appointment.all.each do |a|
      if !params[:available_times].include?(a.timeslot_id)
        Appointment.destroy_all(timeslot_id: a.timeslot_id)
      end
    end
    params[:available_times].each do |appt|
      unless Appointment.exists?(timeslot_id: appt)
        Appointment.create(timeslot_id: appt, recruiter_id: current_recruiter.id)
      end
    end
    # binding.pry
    redirect_to new_appointment_path
  end

  private
  def appointment_params
    params.require(:appointment).permit(:timeslot_id).merge(reviewer_id: current_reviewer.id)
  end
end
