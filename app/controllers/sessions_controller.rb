class SessionsController < ApplicationController

   def new
   end

   def create
	   #current_company()
	 company = Company.find_by_name(params[:session][:name])
	 #password = Company.find_by_name(params[:session][:name]).password
	 #company.update_attributes(industy: "TEXT")
	 #Company.create(name: company.name, industry: "test")
	 #@company.
	 # @current_company = @company
	   if company && company.password ==params[:session][:password]
		   sign_in company
		   redirect_to root_path 
	  else 
                 flash.now[:error] = 'Invalid email/password combination'
		  render 'new'
	   end
		 
    end
   #def show
	#   current_company()
	 #  com = @current_company
  # end
   def destroy
	   sign_out
	   redirect_to root_path
   end
end
