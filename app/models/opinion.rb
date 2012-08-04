class Opinion < ActiveRecord::Base
belongs_to :posting
belongs_to :contractor
belongs_to :company
has_many :replies
  attr_accessible :company_id, :content, :contractor_id, :created_at, :posting_id, :updated_at

 def self.contractor(search)
	 search_condition = "%#{search}%"
    if search
       find(:all, :conditions => ['contractor_id LIKE ?', search_condition])
         else
       find(:all)
   end
  end


  def self.company(search)
	 search_condition = "%#{search}%"
    if search
       find(:all, :conditions => ['contractor_id LIKE ?', search_condition])
         else
       find(:all)
   end
  end

end
