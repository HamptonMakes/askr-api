class Question < ActiveRecord::Base
  has_many :answers, :order => "id ASC"
  has_many :votes
  
  def votes_in(year)
    self.votes.count(:conditions => {:year => year})
  end
end
