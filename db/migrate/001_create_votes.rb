class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :question_id, :answer_id, :person_id
      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
