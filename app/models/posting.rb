class Posting < ActiveRecord::Base
belongs_to :company
belongs_to :contractor
has_many :opinions
  attr_accessible :city, :description, :duration, :requirements, :salary, :state, :title, :zipcode, :company_id, :degree


 def self.posting_search(search)
	 search_condition = "%#{search}%"
	 
    if search
       find(:all, :conditions => ['company_id LIKE ?', search_condition])
    else
       find(:all)
    end
	

 end

 def self.degree_conditions(degree)
      find(:all, :conditions => ['degree LIKE ?', "%#{degree}%"]) unless degree.blank?
  end
  
  def self.title_conditions(title)
      find(:all, :conditions => ['title LIKE ?', "%#{title}%"]) unless title.blank?
  end

  def self.city_conditions(city)
      find(:all, :conditions => ['city LIKE ?', "%#{city}%"]) unless city.blank?
  end
  
  def self.state_conditions(state)
      find(:all, :conditions => ['state LIKE ?', "%#{state}%"]) unless state.blank?
  end


  def self.stateandtitle_conditions(state,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['state LIKE ?', "%#{state}%"] ))
  end
  def self.degreeandtitle_conditions(degree,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['degree LIKE ?', "%#{degree}%"] ))
  end
  def self.cityandtitle_conditions(city,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['city LIKE ?', "%#{city}%"] ))
  end
  def self.cityanddegree_conditions(city,degree )
       find(:all, :conditions => (['degree LIKE ?', "%#{degree}%"] or ['city LIKE ?', "%#{city}%"] ))
  end
  def self.stateanddegree_conditions(degree,state )
       find(:all, :conditions => (['degree LIKE ?', "%#{degree}%"] or ['state LIKE ?', "%#{state}%"] ))
  end
  def self.cityandstate_conditions(city,state )
       find(:all, :conditions => (['city LIKE ?', "%#{city}%"] or ['state LIKE ?', "%#{state}%"] ))
  end


  def self.citydegreetitle_conditions(city,degree,title )
       find(:all, :conditions => (['city LIKE ?', "%#{city}%"] or ['degree LIKE ?', "%#{degree}%"] or ['title LIKE ?', "%#{title}%"] ))
  end
  def self.citydegreestate_conditions(city,degree,state )
       find(:all, :conditions => (['city LIKE ?', "%#{city}%"] or ['degree LIKE ?', "%#{degree}%"] or ['state LIKE ?', "%#{state}%"] ))
  end
  def self.degreestatetitle_conditions(degree,state,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['degree LIKE ?', "%#{degree}%"] or ['state LIKE ?', "%#{state}%"] ))
  end
  def self.cityestatetitle_conditions(city,state,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['city LIKE ?', "%#{city}%"] or ['state LIKE ?', "%#{state}%"] ))
  end
  

  def self.all_conditions(city, degree, state, title) 
         find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['city LIKE ?', "%#{city}%"] or ['state LIKE ?', "%#{state}%"] or ['degree LIKE ?', "%#{degree}%"] ))
  end

end
