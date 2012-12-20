class StaticController < ApplicationController
  def index
  end

  def contact
  end

  def about
  end

  def email
    @email = 'eric@tuchscherer.me';
    UserMailer.contact_message(@email, 'foo test').deliver
  end
end
