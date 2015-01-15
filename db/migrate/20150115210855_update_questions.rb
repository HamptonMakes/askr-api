class UpdateQuestions < ActiveRecord::Migration
  def change
    # What is your web framework of preference
    Answer.create(content: "Grape", question_id: 4)
    Answer.create(content: "Rack (only)", question_id: 4)
    Answer.create(content: "Padrino", question_id: 4)

    # Text editor of preference?
    Answer.create(content: "Atom", question_id: 6)
    Answer.create(content: "Visual Studio", question_id: 6)
    Answer.create(content: "XCode", question_id: 6)

    # What version of Ruby are you currently using?
    Answer.create(content: "2.2", question_id: 15)

    # Which of these 'NoSQL' databases currently interest you the most?
    Answer.create(content: "HBase", question_id: 61)
    Answer.create(content: "Elasticsearch", question_id: 61)
  end
end
