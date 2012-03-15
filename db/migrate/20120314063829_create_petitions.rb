class CreatePetitions < ActiveRecord::Migration
  def self.up
    create_table :petitions do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "state"
      t.boolean "volunteer", :default => false
      t.text "message"
      t.timestamps
    end
  end

  def self.down
    drop_table :petitions
  end
  
end