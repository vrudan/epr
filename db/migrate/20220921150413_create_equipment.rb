class CreateEquipment < ActiveRecord::Migration[7.0]
  def self.up
    create_table :equipment, :if_not_exists => true do |t|
      t.string :name, null: false
      t.integer :equipment_type, null: false
      t.string :model
      t.string :description

      t.timestamps
    end
  end
  def self.down
    drop_table(:equipment, :if_exists => true)
  end
end
