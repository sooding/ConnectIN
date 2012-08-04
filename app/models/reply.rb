class Reply < ActiveRecord::Base
belongs_to :company
belongs_to :opinion
  attr_accessible :company_id, :content, :contractor_id, :created_at, :opinion_id, :updated_at

 def self.findcompany(search)
	 search_condition = "%#{search}%"
    if search
       find(:all, :conditions => ['company_id LIKE ?', search_condition])
         else
       find(:all)
   end
  end



end
