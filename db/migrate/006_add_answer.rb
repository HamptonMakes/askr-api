class AddAnswer < ActiveRecord::Migration
  def self.up
    Answer.create(:question_id => 9, :content => "Don't Care")
  end

  def self.down
  end
end
