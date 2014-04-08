class Question < ActiveRecord::Base
  has_many :answers, :order => "id ASC"
  has_many :votes
  
  def self.before_date(date)
    all(:conditions => ["created_at < ?", date])
  end

  def votes_in(year)
    self.votes.count(:conditions => {:year => year})
  end

  def year_added
    self.created_at.year
  end
end
