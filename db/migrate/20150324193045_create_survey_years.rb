class CreateSurveyYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :year
      t.datetime :starts_at, :ends_at
      t.belongs_to :survey
      t.timestamps null: false
    end

    change_table :questions do |t|
      t.belongs_to :survey
      t.belongs_to :year
    end

    change_table :votes do |t|
      t.belongs_to :year
    end
  end
end
