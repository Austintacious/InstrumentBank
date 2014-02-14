class ChangeInstrumentsAssociation < ActiveRecord::Migration
  def up
    remove_column :instruments, :instrument_bank_id
    remove_column :users, :instrument_bank_id
    remove_column :users, :instrumentbank_id
    add_column :instruments, :bank_id, :integer
    add_column :users, :bank_id, :integer
  end

  def down
    add_column :instruments, :instrument_bank_id, :integer
    add_column :users, :instrument_bank_id, :integer
    add_column :users, :instrumentbank_id, :integer
    remove_column :instruments, :bank_id
    remove_column :users, :bank_id
  end
end
