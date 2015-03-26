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
    answers.each do |answer|
      answer.build_year_summary(year).save!
    end
  end

  def to_csv(significance_at_least)
    require 'csv'
    "#---- #{content.strip} ------\n" + CSV.generate do |csv|
      as = answers.order("created_at ASC")
      csv << ([""] + (as.map &:content))
      year_summary_answers.includes(:year).group_by(&:year).each do |year, data|
        if year.significance >= significance_at_least
          csv << ([year.year] + (data.map do |summary|
            summary.percentage_this_year
          end))
        end
      end
    end
  end
end
