class UserMailer < ActionMailer::Base
  default from: "system@eric.tuchscherer.me"

  def contact_message(from, message)
    @from = from
    @message = message
    mail(:to => 'eric@tuchscherer.me', :subject => 'Communication from my awesome site')
  end
end
