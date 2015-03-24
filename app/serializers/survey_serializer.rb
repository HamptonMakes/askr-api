class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :years

  def id
    object.slug
  end
end
