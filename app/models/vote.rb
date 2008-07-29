class Vote < ActiveRecord::Base
  belongs_to :question
  belongs_to :person
  belongs_to :answer
end
