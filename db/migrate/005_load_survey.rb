class LoadSurvey < ActiveRecord::Migration
  def self.up
    require 'open-uri'
    data = open(RAILS_ROOT + "/db/survey.yaml")
    
    question = nil
    
    data.each do |line|
      unless line =~ /  .*/
        unless line.strip == ""
          question = Question.create(:content => line)
        end
      else
        Answer.create(:content => line.strip, :question => question)
      end
    end
  end

  def self.down
    Answer.destroy_all
    Question.destroy_all
  end
end
