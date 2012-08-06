class Company < ActiveRecord::Base
  attr_accessible :industry, :name, :password, :link  
  has_many :postings
  has_secure_password
  
  validates :name, presence: true, length: { maximum:50 }
  validates :industry, presence: true, length: { maximum:50 }
  validates :password, :on=> :create, length: { minimum: 6 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :link, presence: true, format: { with: VALID_EMAIL_REGEX }

  before_save :create_remember_token
  


  def self.degree_conditions(degree)
      find(:all, :conditions => ['degree LIKE ?', "%#{degree}%"]) unless degree.blank?
  end
  
  def self.title_conditions(title)
      find(:all, :conditions => ['title LIKE ?', "%#{title}%"]) unless title.blank?
  end

  def self.skills_conditions(skills)
      find(:all, :conditions => ['skills LIKE ?', "%#{skills}%"]) unless skills.blank?
  end
  
  def self.profession_conditions(profession)
      find(:all, :conditions => ['profession LIKE ?', "%#{profession}%"]) unless profession.blank?
  end


  def self.professionandtitle_conditions(profession,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end
  def self.degreeandtitle_conditions(degree,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['degree LIKE ?', "%#{degree}%"] ))
  end
  def self.skillsandtitle_conditions(skills,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['skills LIKE ?', "%#{skills}%"] ))
  end
  def self.skillsanddegree_conditions(skills,degree )
       find(:all, :conditions => (['degree LIKE ?', "%#{degree}%"] or ['skills LIKE ?', "%#{skills}%"] ))
  end
  def self.professionanddegree_conditions(degree,profession )
       find(:all, :conditions => (['degree LIKE ?', "%#{degree}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end
  def self.skillsandprofession_conditions(skills,profession )
       find(:all, :conditions => (['skills LIKE ?', "%#{skills}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end


  def self.skillsdegreetitle_conditions(skills,degree,title )
       find(:all, :conditions => (['skills LIKE ?', "%#{skills}%"] or ['degree LIKE ?', "%#{degree}%"] or ['title LIKE ?', "%#{title}%"] ))
  end
  def self.skillsdegreeprofession_conditions(skills,degree,profession )
       find(:all, :conditions => (['skills LIKE ?', "%#{skills}%"] or ['degree LIKE ?', "%#{degree}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end
  def self.degreeprofessiontitle_conditions(degree,profession,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['degree LIKE ?', "%#{degree}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end
  def self.skillseprofessiontitle_conditions(skills,profession,title )
       find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['skills LIKE ?', "%#{skills}%"] or ['profession LIKE ?', "%#{profession}%"] ))
  end
  

  def self.all_conditions(skills, degree, profession, title) 
         find(:all, :conditions => (['title LIKE ?', "%#{title}%"] or ['skills LIKE ?', "%#{skills}%"] or ['profession LIKE ?', "%#{profession}%"] or ['degree LIKE ?', "%#{degree}%"] ))
  end

  private 

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
 
  
end
    

