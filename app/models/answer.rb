class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes
end
