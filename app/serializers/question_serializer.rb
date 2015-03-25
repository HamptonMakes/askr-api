class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :year_id
  has_many :answers
  has_many :year_summary_answers
end
