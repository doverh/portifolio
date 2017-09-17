class UserMailer < ApplicationMailer
layout 'new_user'

def new_contact(contact)
    @contact = contact
    mail(:to => "doverheld@gmail.com", :subject => @contact.message)
end

end
