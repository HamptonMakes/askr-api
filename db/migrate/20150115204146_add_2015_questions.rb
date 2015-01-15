class Add2015Questions < ActiveRecord::Migration
  def change
    require 'open-uri'
    data = open(File.join(Rails.root, "db/survey_2015.yaml"))

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
end
