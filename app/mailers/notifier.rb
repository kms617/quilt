class Notifier < ApplicationMailer
  default from: "no_reply@adecco.com"

  def mail_appointment(appointment, event)
    @appointment = appointment
    attachments['event'] = { mime_type: :ics}
    mail(to: appointment.recruiter.email, subject: 'Appointment with a new recruit')
  end
end
