class FixSpelling < ActiveRecord::Migration
  def self.up
    Answer.find_by_content("Athiest").update_attributes(:content => "Atheist")
  end

  def self.down
  end
end
