class EmailController < ApplicationController
  def contact

    if request.post?
     if ContactForm.contact_message(params).deliver
       @status = true
     end
    end
  end
end
