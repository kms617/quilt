class Appointment < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :timeslot
  belongs_to :candidate

  def to_ics
    event = Icalendar::Event.new
    event.dtstart       = timeslot.start_time
    event.duration      = 30
    event.description   = 'Appointment at Adecco'
    event.location      = 'Adecco - Jacksonville'
    event.created       = created_at
    event.last_modified = updated_at
    event.uid           = id.to_s
    event
  end
end
