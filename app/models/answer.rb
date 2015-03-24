class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes

  def votes_in(year)
    votes.where(:year => year).count
  end

  def percent_in(year)
    (votes_in(year) / question.votes_in(year).to_f) * 100
  end

  def change_between(year, past_year)
    ((self.percent_in(year) - self.percent_in(past_year).to_f) / 100) * 100
  end
end
