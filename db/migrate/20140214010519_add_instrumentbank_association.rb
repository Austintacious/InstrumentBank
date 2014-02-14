class AddInstrumentbankAssociation < ActiveRecord::Migration
  def up
    add_column :instruments, :instrument_bank_id, :integer
  end

  def down
    remove_column :instruments, :instrument_bank_id
  end
end
