class AddInstrumentbankId < ActiveRecord::Migration
  def up
    add_column :users, :instrumentbank_id, :integer
  end

  def down
    remove_column :users, :instrumentbank_id
  end
end
