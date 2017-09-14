class WelcomeController < ApplicationController


def index
	@contact = Contact.new
end

def contact
  @contact = Contact.new(params[:contact])
  @contact.request = request
  if @contact.deliver
    flash.now[:notice] = 'Thank you for your message. I will contact you soon!'
    redirect_to visitors_path # Go back to the index page
  else
    flash.now[:error] = 'Cannot send message.'
    render :index # Instead of :new, as we submit from :index
  end 
end

end


