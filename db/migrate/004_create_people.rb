class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :email_address, :ip_address, :user_agent
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
