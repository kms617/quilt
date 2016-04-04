class ApplicationMailer < ActionMailer::Base
  default from: "no_reply@adecco.com"
  layout 'mailer'
end
