class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :votes
  belongs_to :year
  belongs_to :survey
  has_many :year_summary_answers

  def generate_summaries_for(year)
    total_votes = votes.where(year: year).count
    if total_votes == 0
      return []
    end
    answers.map do |answer|
      answer.build_year_summary(year).save!
    end
  end
end
