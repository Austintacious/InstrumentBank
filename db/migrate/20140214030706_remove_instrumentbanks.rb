class RemoveInstrumentbanks < ActiveRecord::Migration

  def up
    drop_table :instrument_banks
  end

  def down
    create_table :instrument_banks do |t|
      t.integer :instrument_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end

end
