ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :port => 25,
    :domain => "www.tuchscherer.me",
    :authentication => :plain,
    :user_name => "eric@tuchscherer.me",
    :password => "papersling"
}