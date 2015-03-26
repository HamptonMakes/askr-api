class YearSignificance < ActiveRecord::Migration
  def change
    change_table :years do |t|
      t.integer :significance, default: 0, index: true
    end

    Year.all.each do |year|
      year.calculate_significance
      year.save!
    end
  end
end
