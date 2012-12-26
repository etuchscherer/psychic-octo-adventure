class ContactForm < ActionMailer::Base
  include SendGrid

  default from: "system@tuchscherer.me"

  def contact_message(email)
    sendgrid_category 'testing'
    mail :to => 'eric@tuchscherer.me',
         :subject => email[:subject],
         :body => "Message sent by: #{email[:from]} \n via: eric.tuchscherer.me \n \n #{email[:body]}"
  end
end
