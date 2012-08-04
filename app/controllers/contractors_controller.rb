class ContractorsController < ApplicationController
#  before_filter :correct_contractor, only: [:edit, :update]
  
def signup
 @contractor = Contractor.new
 @title = "Sign up"

end

  def show
    @contractor = Contractor.find(params[:id])
  end

  def profile
    @contractor = Contractor.find(params[:id])
  end

  def relationship
  end

   def create
    @contractor = Contractor.new(params[:contractor])
      if @contractor.save
        UserMailer.welcome_email_contractor(@contractor).deliver
        flash[:success] = "Please complete your profile" + ' '  + @contractor.firstname
        render '_contractor_form'
      else
        render 'signup'
   end
 end
   
   def edit
    @contractor = Contractor.find(params[:id])
   end
  
   def update
    @contractor = Contractor.find(params[:id])
    if @contractor.update_attributes(params[:contractor])
      flash[:success] = "Profile updated"
      sign_in @contractor
      redirect_to current_contractor
    else
      render 'edit'
    end
  end

   def search
	 @company = Company.all
   end
   
   def searchposting
	   @posting=Posting.all
   end


   def index
	   title= params[:title]
	   degree =  params[:degree]
	   city =  params[:city]
	   state =  params[:state]

	 

     if !city.blank? and degree.blank? and state.blank?  and title.blank?
                  @posting = Posting.city_conditions(city )
     end
     
     if city.blank? and degree.blank? and !state.blank?   and title.blank?
                  @posting = Posting.state_conditions(state )
     end
     if city.blank? and !degree.blank? and state.blank?   and title.blank?
                  @posting = Posting.degree_conditions(degree )
     end
     if city.blank? and degree.blank? and state.blank?   and !title.blank?
                     @posting = Posting.title_conditions(title )
     end


     if city.blank? and degree.blank? and !state.blank?   and !title.blank?
                     @posting = Posting.stateandtitle_conditions(state,title )
     end 
     if city.blank? and !degree.blank? and state.blank?   and !title.blank?
                     @posting = Posting.degreeandtitle_conditions(degree,title )
     end
     if !city.blank? and degree.blank? and state.blank?   and !title.blank?
                     @posting = Posting.cityandtitle_conditions(city,title )
     end
     if !city.blank? and !degree.blank? and state.blank?   and title.blank?
                      @posting = Posting.cityanddegree_conditions(city,degree )
     end
     if city.blank? and !degree.blank? and !state.blank?   and title.blank?
                           @posting = Posting.stateanddegree_conditions(degree,state )
     end
     if !city.blank? and degree.blank? and !state.blank?  and title.blank?
                  @posting = Posting.cityandstate_conditions(city,state )
	   end
    
     
  
    if !city.blank? and !degree.blank? and state.blank? and !title.blank?
                  @posting = Posting.citydegreetitle_conditions(city,degree,title )
     end
    if !city.blank? and !degree.blank? and !state.blank? and title.blank?
                   @posting = Posting.citydegreeprofession_conditions(city,degree,state )
     end
    if city.blank? and !degree.blank? and !state.blank? and !title.blank?
                   @posting = Posting.degreestatetitle_conditions(degree,state,title )
     end
    if !city.blank? and degree.blank? and !state.blank? and !title.blank?
                   @posting = Posting.cityestatetitle_conditions(city,state,title )
     end

	   if city.blank? and degree.blank? and state.blank? and title.blank?
                  @posting = Posting.find(:all, :conditions => ['title LIKE ?', ""])
	   end
	   if !city.blank? and !degree.blank? and !state.blank? and !title.blank?
                  
                   @posting = Posting.all_conditions(city, degree, state, title) 
	   end
        
	
         end

end

