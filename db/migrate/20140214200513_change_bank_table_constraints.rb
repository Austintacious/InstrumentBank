class ChangeBankTableConstraints < ActiveRecord::Migration
  def up
    change_column :banks, :instrument_id, :integer, null: true
  end

  def down
    change_column :banks, :instrument_id, :integer, null: false
  end
end
