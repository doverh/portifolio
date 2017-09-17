class UserMailer < ApplicationMailer
layout 'new_user'

def new_user
    mail(:to => "doverheld@gmail.com", :subject => "Welcome to doverheld@gmail.com")
end

end
