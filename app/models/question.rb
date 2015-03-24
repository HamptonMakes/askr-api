class Question < ActiveRecord::Base
  has_many :answers
  has_many :votes
  belongs_to :year
  belongs_to :survey
end
