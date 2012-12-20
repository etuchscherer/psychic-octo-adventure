class ContactForm < ActionMailer::Base
  include SendGrid

  default from: "system@tuchscherer.me"

  def contact_message(from, message)
    sendgrid_category 'testing'
    mail :to => 'eric@tuchscherer.me',
         :subject => 'Sup Boss :-)',
         :body => "Message sent from: #{from} via eric.tuchscherer.me #{message}"
  end
end
