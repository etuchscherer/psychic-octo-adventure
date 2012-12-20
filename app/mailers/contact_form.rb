class ContactForm < ActionMailer::Base
  include SendGrid

  default from: "system@tuchscherer.me"

  def contact_message(from)
    sendgrid_category 'testing'
    mail :to => 'eric@tuchscherer.me', :subject => 'Sup Boss :-)'
  end
end
