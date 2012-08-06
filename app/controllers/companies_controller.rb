class CompaniesController < ApplicationController
  def signup
	  @company = Company.new
  end

  def create
	  @company = Company.new(params[:company])
	  if @company.save
		  UserMailer.welcome_email(@company).deliver
		  sign_in @company
		  flash[:success] = "Welcome to ConnectIN!"
		  redirect_to root_path
	  else
		  render 'new'
	  end
  end
    
  def showall
	  @company = Company.all
  end

      
  def show

	  @company = Company.find(params[:id])
	  @posting = Posting.posting_search(params[:id])
  end

  def edit
	  @company = Company.find(params[:id])
  end 

  def update
       	  @company = Company.find(params[:id])
	  if @company.update_attributes(params[:user])
		  flash[:success] = "Profile updated"
		  redirect_to @company
	  else
		  render 'edit'
	  end
  end

  def search
	  @contractors=Contractor.all
  end

  def index
	   skills= params[:skills]
	   degree =  params[:degree]
	   profession =  params[:profession]
           title = params[:title]

     if !skills.blank? and degree.blank? and profession.blank?  and title.blank?
                  @company = Contractor.skills_conditions(skills )
     end
     
     if skills.blank? and degree.blank? and !profession.blank?   and title.blank?
                  @company = Contractor.profession_conditions(profession )
     end
     if skills.blank? and !degree.blank? and profession.blank?   and title.blank?
                  @company = Contractor.degree_conditions(degree )
     end
     if skills.blank? and degree.blank? and profession.blank?   and !title.blank?
                      @company = Contractor.title_conditions(title )
     end


     if skills.blank? and degree.blank? and !profession.blank?   and !title.blank?
                     @company = Contractor.professionandtitle_conditions(profession,title )
     end 
     if skills.blank? and !degree.blank? and profession.blank?   and !title.blank?
                     @company = Contractor.degreeandtitle_conditions(degree,title )
     end
     if !skills.blank? and degree.blank? and profession.blank?   and !title.blank?
                     @company = Contractor.skillsandtitle_conditions(skills,title )
     end
     if !skills.blank? and !degree.blank? and profession.blank?   and title.blank?
                      @company = Contractor.skillsanddegree_conditions(skills,degree )
     end
     if skills.blank? and !degree.blank? and !profession.blank?   and title.blank?
                           @company = Contractor.professionanddegree_conditions(degree,profession )
     end
     if !skills.blank? and degree.blank? and !profession.blank?  and title.blank?
                  @company = Contractor.skillsandprofession_conditions(skills,profession )
	   end
    
     
  
    if !skills.blank? and !degree.blank? and profession.blank? and !title.blank?
                  @company = Contractor.skillsdegreetitle_conditions(skills,degree,title )
     end
    if !skills.blank? and !degree.blank? and !profession.blank? and title.blank?
                   @company = Contractor.skillsdegreeprofession_conditions(skills,degree,profession )
     end
    if skills.blank? and !degree.blank? and !profession.blank? and !title.blank?
                   @company = Contractor.degreeprofessiontitle_conditions(degree,profession,title )
     end
    if !skills.blank? and degree.blank? and !profession.blank? and !title.blank?
                   @company = Contractor.skillseprofessiontitle_conditions(skills,profession,title )
     end

	   if skills.blank? and degree.blank? and profession.blank? and title.blank?
                  @company = Contractor.find(:all, :conditions => ['title LIKE ?', ""])
	   end
	   if !skills.blank? and !degree.blank? and !profession.blank? and !title.blank?
                  
                   @company = Contractor.all_conditions(skills, degree, profession, title) 
	   end
     
         end

end
