class CreateYearSummaryAnswers < ActiveRecord::Migration
  def change
    create_table :year_summary_answers do |t|
      t.text :data
      t.belongs_to :year
      t.belongs_to :question
      t.belongs_to :answer
      t.integer :pecentage_this_year
      t.integer :change_from_last_year
      t.timestamps null: false
    end
  end
end
