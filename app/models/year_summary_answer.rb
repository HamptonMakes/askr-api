class YearSummaryAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :year
  belongs_to :answer

  before_create :calculate_change_from_last_year

  def calculate_change_from_last_year
    if previous_year = year.previous_year
      if (last_year_summary = self.answer.year_summary_answers.where(year: previous_year).first)
        self.change_from_last_year = self.percentage_this_year - last_year_summary.percentage_this_year
      end
    end
  end
end
