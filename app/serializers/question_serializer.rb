class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :year_id, :years_asked
  has_many :answers
  has_many :year_summary_answers

  def years_asked
    object.years_asked.map &:year
  end
end
