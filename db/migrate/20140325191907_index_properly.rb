class IndexProperly < ActiveRecord::Migration
  def change
    add_index :votes, :answer_id
    add_index :votes, :person_id
    add_index :votes, :question_id
    add_index :votes, :created_at
    add_index :answers, :question_id
    add_index :people, :created_at
    add_index :questions, :created_at
  end
end
