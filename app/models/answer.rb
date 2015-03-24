class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes, dependent: :destroy
  has_many :year_summary_answers

  def build_year_summary(year, total_votes = nil)
    total_votes ||= question.votes.where(year: year).count
    this_answers_count = self.votes.where(year: year).count
    percentage = (this_answers_count / total_votes.to_f) * 100
    YearSummaryAnswer.new(
      question: self.question,
      answer: self,
      year: year,
      pecentage_this_year: percentage,
      total_votes: this_answers_count
    )
  end
end
