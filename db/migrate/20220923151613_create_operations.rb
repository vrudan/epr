class CreateOperations < ActiveRecord::Migration[7.0]
  def self.up
    create_table :operations, :if_not_exists => true do |t|
      t.string :name
      t.string :code
      t.time :last_check
      t.time :next_check
      t.belongs_to :equipment, null: true, foreign_key: true

      t.timestamps
    end
  end
  def self.down
    drop_table(:operations, :if_exists => true)
  end
end
