class Survey < ActiveRecord::Base
  has_many :questions
  has_many :years
  has_many :votes, through: :years
end
