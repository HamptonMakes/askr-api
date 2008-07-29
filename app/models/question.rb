class Question < ActiveRecord::Base
  has_many :answers, :order => "id ASC"
  has_many :votes
end
