
class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name, :slug
  has_many :years
end
