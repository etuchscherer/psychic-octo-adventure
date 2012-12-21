class ContactForm < ActionMailer::Base
  include SendGrid

  default from: "system@tuchscherer.me"

  def contact_message(email)
    sendgrid_category 'testing'
    mail :to => 'eric@tuchscherer.me',
         :subject => email['Subject'],
         :body => "Message sent by: #{email['From']} \n via: eric.tuchscherer.me \n \n #{email['Body']}"
  end
end
