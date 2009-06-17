class AddYear < ActiveRecord::Migration
  def self.up
    add_column :votes, :year, :integer
    
    Vote.update_all("year = 2008")
  end

  def self.down
    remove_column :votes, :year
  end
end
