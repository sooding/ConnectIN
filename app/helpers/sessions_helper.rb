module SessionsHelper

	def sign_in(company)
		cookies.permanent[:remember_token] = company.remember_token
		current_company = company
	end
	def signed_in?
		!current_company.nil?
	end
	def current_company= (company)
               @current_company = company
	end

	def current_company
		@current_company ||= company_from_remember_token
	end
        
	def sign_out
		current_company = nil
		cookies.delete(:remember_token)
	end
	private 

	  def company_from_remember_token
		  remember_token = cookies[:remember_token]
		  Company.find_by_remember_token(remember_token) unless remember_token.nil?
	  end
       
end
