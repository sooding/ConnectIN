class UserMailer < ActionMailer::Base

  default from: "wenweixian2012@gmail.com"

   def postinform_email(company, posting)
	  @company = company
	  @posting = posting
	  @url = "http://ContractON.com"
	  email_with_name = "#{@company.name} "
	  mail(:to => company.link, :subject =>"Job Posting Successful")
	  
  end
  
  def welcome_email(user)
	  @user = user
	  @url = "http://ContractON.com/"
	  email_with_name = "#{@user.name} <#{@user.link}>"
	  mail(:to => user.link, :subject =>"Welcome to My ContractON")
  end

   def welcome_email_contractor(user)
	  @user = user
	  @url = "http://ContractON.com/"
	  email_with_name = "#{@user.firstname} <#{@user.email}>"
	  mail(:to => user.email, :subject =>"Welcome to My ContractON")
  end


end
