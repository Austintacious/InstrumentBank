class CreateInstruments < ActiveRecord::Migration
  def up
    create_table :instruments do |t|
      t.string :type, null: false
      t.integer :age
      t.string :organization
      t.string :borrower_first_name
      t.string :borrower_last_name
      t.string :borrower_email
      t.text :story
      t.string :size, null: false

      t.timestamps
    end

    change_column :users, :first_name, :string, null: false
    change_column :users, :last_name, :string, null: false
  end

  def down
    drop_table :instruments
  end
end
