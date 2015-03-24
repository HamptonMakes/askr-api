class Vote < ActiveRecord::Base
  belongs_to :question
  belongs_to :person
  belongs_to :answer
  belongs_to :year
end
