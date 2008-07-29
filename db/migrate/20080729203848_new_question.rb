class NewQuestion < ActiveRecord::Migration
  def self.up
    q = Question.create(:content => "What are your religious beliefs (feel free to leave empty)?")
    ["Monotheist", "Polytheist", "Agnositc", "Athiest", "New Age", "Other"].each do |a|
      Answer.create(:question => q, :content => a)
    end
  end

  def self.down
  end
end
