class ChangeReferences < ActiveRecord::Migration
  def up
    rename_table :instrument_banks, :instrumentbanks
  end

  def down
    rename_table :instrumentbanks, :instrument_banks
  end
end
