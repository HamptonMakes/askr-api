class Question < ActiveRecord::Base
  has_many :answers, :order => "id ASC"
  has_many :votes
  
  def before_date(date)
    self.all(:conditions => ["created_at < ?", date])
  end

  def votes_in(year)
    self.votes.count(:conditions => {:year => year})
  end

  def year_added
    self.created_at.year
  end
end
