module ContractorSessionsHelper

	def sign_in(contractor)
		cookies.permanent[:remember_token] = contractor.remember_token
		current_contractor = contractor
	end
	def csigned_in?
		!current_contractor.nil?
	end
	def current_contractor= (contractor)
               @current_contractor = contractor
	end

	def current_contractor
		@current_contractor ||= contractor_from_remember_token
	end
        
        def current_contractor_profile= (contractor_profile)
               @current_contractor_profile= contractor_profile
	end

	def sign_out
		current_contractor = nil
		cookies.delete(:remember_token)
	end
	private 

	  def contractor_from_remember_token
		  remember_token = cookies[:remember_token]
		  Contractor.find_by_remember_token(remember_token) unless remember_token.nil?
	  end

end
