class Person < ActiveRecord::Base
  has_many :votes
  has_many :answers, :through => :votes
end
