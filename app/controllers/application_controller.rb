class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include ContractorSessionsHelper
 # helper_method :current_company
 # before_filter :require_company
  #@current_company
  # private 
   # def current_company()
	    #@current_company = Company.find_by_name(params[:session][:name])
   # end

  #  def require_company
	  #  unless current_company
		#   flash[:notice] = "You must logged in to access this page"
		#   redirect_to csignin
	#	   return false
	  #  end
    #end
end
