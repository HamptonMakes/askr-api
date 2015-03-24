class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :year_id
  has_many :answers
end
