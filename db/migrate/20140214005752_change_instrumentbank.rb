class ChangeInstrumentbank < ActiveRecord::Migration
  def up
    add_column :users, :instrument_bank_id, :integer
  end

  def down
    remove_column :users, :instrument_bank_id
  end
end
