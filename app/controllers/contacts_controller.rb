class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
def create
    @contact = Contact.new contact_params
if @contact.valid?
      MessageMailer.contact(@contact).deliver_now
      redirect_to root_path
      flash[:notice] = "We have received your message and will be in touch soon!"
    else
      flash[:notice] = "There was an error sending your message. Please try again."
      render :new
    end
  end

private
def contact_params
    params.require(:message).permit(:name, :email)
  end
end