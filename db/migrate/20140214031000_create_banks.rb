class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.integer :instrument_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
