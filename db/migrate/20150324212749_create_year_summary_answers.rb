class CreateYearSummaryAnswers < ActiveRecord::Migration
  def change
    create_table :year_summary_answers do |t|
      t.text :data
      t.belongs_to :year
      t.belongs_to :question
      t.belongs_to :answer
      t.float :pecentage_this_year
      t.float :change_from_last_year
      t.integer :total_votes
      t.timestamps null: false
    end
  end
end
