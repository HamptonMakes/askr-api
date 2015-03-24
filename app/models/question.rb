class Question < ActiveRecord::Base
  has_many :answers
  has_many :votes
  belongs_to :year
  belongs_to :survey

  def votes_in(year)
    self.votes.count(:conditions => {:year => year})
  end

  def year_added
    self.created_at.year
  end
end
