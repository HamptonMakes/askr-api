class FixingJquery < ActiveRecord::Migration
  def self.up
    Answer.find_by_content("JQuery").update_attributes(:content => "jQuery")
  end

  def self.down
  end
end
