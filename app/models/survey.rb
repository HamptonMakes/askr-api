class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :years, dependent: :destroy
  has_many :votes, through: :years

  def to_csv(significance_at_least = 10)
    (Question.all.map do |q|
      q.to_csv(significance_at_least)
    end).join("\n\n\n")
  end

  def yearly_participation
    q = Question.first
    years.map do |year|
      [year.year, q.votes.where(year: year).count]
    end
  end
end
