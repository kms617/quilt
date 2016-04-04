class AppointmentsController < ApplicationController
  include ActionController::MimeResponds

  def index
    @date = date
    @yesterday = yesterday
    @tomorrow = tomorrow
    timeslots = Timeslot.all
    @timeslots = timeslots.order(start_time: :asc)
    @appointments = appointments_for_select
    @candidate = params[:candidate_id]
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
        Appointment.destroy_all(timeslot_id: a.timeslot_id, recruiter_id: Recruiter.first.id)
      end
    end
    params[:available_times].each do |appt|
      unless Appointment.exists?(timeslot_id: appt)
        Appointment.create(timeslot_id: appt, recruiter_id: Recruiter.first.id)
      end
    end
    # binding.pry
    # flash[:notice] = "Availability updated!"
    redirect_to(:back)
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @candidate = Candidate.find(params[:candidate_id])
    @appointment.candidate = @candidate

    #Create iCalendar event
    calendar = Icalendar::Calendar.new
    event = calendar.add_event(@appointment.to_ics)

    mail = Notifier.mail_appointment(@appointment, event)
    mail.deliver_now
    flash[:notice] = "#{@appointment.recruiter.first_name} will be ready for you at #{@appointment.timeslot.start_time.strftime('%l:%M %P')}. Thank you for signing up!"
    redirect_to welcome_home_path
  end

  private

  def date(date_arg = nil)
    return Date.parse(date_arg) if date_arg
    if params[:year]
      Date.parse("#{params[:year]}-#{params[:month]}-#{params[:day]}")
    else
      Date.today
    end
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
    params.require(:appointment).permit(:timeslot_id, :candidate_id, :recruiter_id)
    # .merge(reviewer_id: current_reviewer.id)
  end

  def appointments_for_select
    if params[:appointment] == nil
      Appointment.where(candidate_id: nil)
    else
      Appointment.where(candidate_id: nil, recruiter_id: params[:appointment][:recruiter_id])
    end
  end
end
