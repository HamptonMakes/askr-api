class Summerize < ActiveRecord::Migration
  def up
    Year.all.each &:generate_summaries!
  end
end
