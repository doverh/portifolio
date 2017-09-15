class Contact < MailForm::Base

	attribute :name,        :validate=> true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
 	attribute :message,     :validate=> true
	attribute :nickname,    :validate=> true
	# to prevent spam

	def headers
    {
      :subject => "My Contact Form",
      :to => "doverheld@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end