class EmailController < ApplicationController
  def contact

    if request.post? 
     @email = params[:email]
     ContactForm.contact_message(@email).deliver
    end
  end
end
