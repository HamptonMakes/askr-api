class Year < ActiveRecord::Base
  belongs_to :survey
  has_many :questions
  has_many :votes
  has_many :year_summary_answers

  def previous_year
    @previous_year ||= survey.years.where("year < ?", self.year).order("year DESC").first
  end

  # ONLY DO THIS WHEN YOU ARE TOTALLY DONE!
  def generate_summaries!
    survey.questions.each do |question|
      question.generate_summaries_for(self)
    end
  end

  def calculate_significance
    self.significance = (survey.questions.first.votes.where(year: self).count / 100)
  end
end
