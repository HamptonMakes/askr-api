class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :years, dependent: :destroy
  has_many :votes, through: :years
end
